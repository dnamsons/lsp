require "json"
require "./text_document_identifier"
require "./versioned_text_document_identifier"

module LSP::Protocol
  struct TextDocumentParams
    JSON.mapping({
      text_document: {type: (TextDocumentIdentifier | VersionedTextDocumentIdentifier), key: "textDocument"},
      text:          String?,
    }, true)
  end
end
