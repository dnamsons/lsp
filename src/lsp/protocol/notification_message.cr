require "./did_change_configuration_params"
require "./did_change_text_document_params"
require "./did_change_watched_files_params"
require "./did_open_text_document_params"
require "./text_document_params"
require "./document_formatting_params"
require "./publish_diagnostics_params"
require "./void_params"
require "./trace"
require "./cancel_params"

module LSP::Protocol
  alias NotificationType = (DidChangeConfigurationParams |
                            DidChangeTextDocumentParams |
                            DidChangeWatchedFilesParams |
                            DidOpenTextDocumentParams |
                            TextDocumentParams |
                            PublishDiagnosticsParams |
                            VoidParams |
                            CancelParams |
                            Trace)

  struct NotificationMessage
    JSON.mapping({
      jsonrpc: String,
      method:  String,
      params:  NotificationType,
    }, true)

    @jsonrpc = "2.0"

    def initialize(@method, @params)
    end
  end
end
