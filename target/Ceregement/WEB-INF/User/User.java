public class User {
    private String SecretId;
    private String mailAddress;
    private String password;

    public String getSecretId() {
        return SecretId;
    }

    public String getMailAddress() {
        return mailAddress;
    }

    public String getPassword() {
        return password;
    }

    public void setSecretId(String secretId) {
        SecretId = secretId;
    }

    public void setMailAddress(String mailAddress) {
        this.mailAddress = mailAddress;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}