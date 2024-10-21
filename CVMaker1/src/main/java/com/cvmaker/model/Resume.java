package com.cvmaker.model;

public class Resume {
    private int id;
    private int userId;
    private String name;
    private String address;
    private String contact;
    private String email;
    private String skills;
    private String workExperience;
    private String education;
    private String templateName;
    private String profilePicturePath;
    private String aboutMe; // New field for "About Me" section


    // Default Constructor
    public Resume() {}

    // Parameterized Constructor
    public Resume(int id, int userId, String name, String address, String contact, String email, String skills, String workExperience, String education, String templateName, String profilePicturePath, String aboutMe) {
        this.id = id;
        this.userId = userId;
        this.name = name;
        this.address = address;
        this.contact = contact;
        this.email = email;
        this.skills = skills;
        this.workExperience = workExperience;
        this.education = education;
        this.templateName = templateName;
        this.profilePicturePath = profilePicturePath;
        this.aboutMe = aboutMe; // Initialize new field
    }


    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getWorkExperience() {
        return workExperience;
    }

    public void setWorkExperience(String workExperience) {
        this.workExperience = workExperience;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getTemplateName() {
        return templateName;
    }

    public void setTemplateName(String templateName) {
        this.templateName = templateName;
    }

    // Getter and Setter for profilePicturePath
    public String getProfilePicturePath() {
        return profilePicturePath;
    }

    public void setProfilePicturePath(String profilePicturePath) {
        this.profilePicturePath = profilePicturePath;
    }
}
