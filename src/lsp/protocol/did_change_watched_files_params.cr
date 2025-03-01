require "./file_event"

module LSP::Protocol
  struct DidChangeWatchedFilesParams
    JSON.mapping({
      changes: Array(FileEvent),
    }, true)
  end
end
