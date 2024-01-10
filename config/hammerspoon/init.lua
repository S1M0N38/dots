-- LSP support for Hammerspoon
hs.loadSpoon("EmmyLua")

recordingTask = nil

function sendRecording()
	local sendingArgs = {
		"-H",
		"Authorization: Bearer " .. "ADD_API_KEY_HERE",
		"-H",
		"Content-Type: multipart/form-data",
		"-F",
		"file=@/tmp/recording.wav",
		"-F",
		"model=whisper-1",
		"--url",
		"https://api.openai.com/v1/audio/transcriptions",
	}
	local sendingTask = hs.task.new("/usr/bin/curl", function(ExitCode, StdOut, StdErr)
		print(ExitCode)
		print(StdOut)
		print(StdErr)
	end, sendingArgs)
	sendingTask:start()
end

function startRecording()
	local recordingArgs = { "-y", "-f", "avfoundation", "-i", ":0", "/tmp/recording.wav" }
	recordingTask = hs.task.new("/usr/local/bin/ffmpeg", nil, recordingArgs)
	recordingTask:start()
	hs.alert.show("Recording Started")
end

function stopRecording()
	assert(recordingTask, "No recording task found")
	recordingTask:terminate()
	recordingTask = nil
	hs.alert.show("Recording Stopped")
	sendRecording()
end

hs.hotkey.bind({ "cmd" }, "`", startRecording, stopRecording)

-- Auto-reloading Hammerspoon
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()
