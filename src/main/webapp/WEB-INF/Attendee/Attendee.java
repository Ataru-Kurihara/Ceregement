public class Attendee {
    private String id;
    private String MailAddress;
    private String name;
    private String tel;
    private Boolean participation;

    public String getId() {
        return id;
    }

    public String getMailAddress() {
        return MailAddress;
    }

    public String getName() {
        return name;
    }

    public String getTel() {
        return tel;
    }

    public Boolean getParticipation() {
        return participation;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setMailAddress(String mailAddress) {
        MailAddress = mailAddress;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setParticipation(Boolean participation) {
        this.participation = participation;
    }
}