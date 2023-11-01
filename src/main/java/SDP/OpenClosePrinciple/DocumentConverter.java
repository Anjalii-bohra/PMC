package SDP;
//Open Closed Principle
interface DocumentConverter {
    void convert();
}

class PdfConverter implements DocumentConverter {
    public void convert() {
        // Logic to convert document to PDF
    }
}

class PngConverter implements DocumentConverter {
    public void convert() {
        // Logic to convert document to PNG
    }
}

class TxtConverter implements DocumentConverter {
    public void convert() {
        // Logic to convert document to plain text (new format)
    }
}
