package com.cvmaker.util;

import com.cvmaker.model.Resume;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileOutputStream;
import java.io.IOException;

public class PDFGenerator {
    
    public static void generateResume(Resume resume, String saveLocation) throws Exception {
        // Validate the save location
        if (saveLocation == null || saveLocation.isEmpty()) {
            throw new IllegalArgumentException("Invalid save location provided.");
        }

        Document document = new Document();
        try {
            // Create a PdfWriter instance
            PdfWriter.getInstance(document, new FileOutputStream(saveLocation));
            document.open();

            // Add profile picture if available
            if (resume.getProfilePicturePath() != null && !resume.getProfilePicturePath().isEmpty()) {
                try {
                    Image profilePic = Image.getInstance(resume.getProfilePicturePath());
                    profilePic.scaleToFit(100, 100); // Scale the image
                    profilePic.setAlignment(Element.ALIGN_LEFT); // Align image
                    document.add(profilePic);
                } catch (IOException e) {
                    throw new Exception("Error adding profile picture: " + e.getMessage(), e);
                }
            }

            // Add content based on the selected template
            switch (resume.getTemplateName()) {
                case "template1":
                    addProfessionalTemplate(document, resume);
                    break;
                case "template2":
                    addCreativeTemplate(document, resume);
                    break;
                case "template3":
                    addSimpleTemplate(document, resume);
                    break;
                default:
                    addSimpleTemplate(document, resume); // Default template if not specified
            }
        } catch (DocumentException | IOException e) {
            throw new Exception("Error generating PDF: " + e.getMessage(), e);
        } finally {
            document.close();
        }
    }

    // Template for professional resume
    private static void addProfessionalTemplate(Document document, Resume resume) throws DocumentException {
        addHeading(document, "Professional Resume for: " + resume.getName(), 16, FontFactory.HELVETICA_BOLD);
        addBasicInfo(document, resume);
        addSectionWithBullets(document, "Skills:", resume.getSkills());
        addSection(document, "Work Experience: " + resume.getWorkExperience());
        addSection(document, "Education: " + resume.getEducation());
    }

    // Template for creative resume
    private static void addCreativeTemplate(Document document, Resume resume) throws DocumentException {
        addHeading(document, "Creative Resume for: " + resume.getName(), 18, FontFactory.COURIER_BOLD);
        addBasicInfo(document, resume);
        addSectionWithBullets(document, "Skills:", resume.getSkills());
        addSection(document, "Experience: " + resume.getWorkExperience());
        addSection(document, "Education: " + resume.getEducation());
    }

    // Template for simple resume
    private static void addSimpleTemplate(Document document, Resume resume) throws DocumentException {
        addHeading(document, "Simple Resume for: " + resume.getName(), 16, FontFactory.TIMES_BOLD);
        addBasicInfo(document, resume);
        addSection(document, "Skills: " + resume.getSkills());
        addSection(document, "Experience: " + resume.getWorkExperience());
        addSection(document, "Education: " + resume.getEducation());
    }

    // Helper method to add the basic information
    private static void addBasicInfo(Document document, Resume resume) throws DocumentException {
        addSection(document, "Email: " + resume.getEmail());
        addSection(document, "Contact: " + resume.getContact());
        addSection(document, "Address: " + resume.getAddress());
        document.add(new Paragraph("\n")); // Add some space after basic info
        addSection(document, "About Me: " + resume.getAboutMe()); // Add "About Me" section
        document.add(new Paragraph("\n")); // Add some space after "About Me"
    }

    // Helper method to add headings
    private static void addHeading(Document document, String text, int fontSize, String fontName) throws DocumentException {
        Font font = FontFactory.getFont(fontName, fontSize, BaseColor.BLACK);
        Paragraph paragraph = new Paragraph(text, font);
        paragraph.setAlignment(Element.ALIGN_CENTER); // Center the heading
        document.add(paragraph);
        document.add(new Paragraph("\n")); // Add space after heading
    }

    // Helper method to add a section
    private static void addSection(Document document, String text) throws DocumentException {
        Paragraph paragraph = new Paragraph(text, FontFactory.getFont(FontFactory.HELVETICA, 12));
        paragraph.setSpacingBefore(5f);
        document.add(paragraph);
    }

    // Helper method to add a section with bullet points
    private static void addSectionWithBullets(Document document, String title, String items) throws DocumentException {
        document.add(new Paragraph(title, FontFactory.getFont(FontFactory.HELVETICA_BOLD, 14)));
        com.itextpdf.text.List list = new com.itextpdf.text.List(com.itextpdf.text.List.UNORDERED);
        for (String item : items.split(",")) {
            list.add(new ListItem(item.trim()));
        }
        document.add(list);
    }
}
