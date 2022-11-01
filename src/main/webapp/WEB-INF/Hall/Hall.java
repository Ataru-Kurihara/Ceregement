public class Hall {
    private String id;
    //命日
    private String DeathDay;
    //故人の名前
    private String DeathName;
    //会場名
    private String HallName;
    //葬儀の住所
    private String Address;
    //葬儀の日時
    private String FunnelDay;

    public String getId() {
        return id;
    }

    public String getDeathDay() {
        return DeathDay;
    }

    public String getDeathName() {
        return DeathName;
    }

    public String getHallName() {
        return HallName;
    }

    public String getAddress() {
        return Address;
    }

    public String getFunnelDay() {
        return FunnelDay;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setDeathDay(String deathDay) {
        DeathDay = deathDay;
    }

    public void setDeathName(String deathName) {
        DeathName = deathName;
    }

    public void setHallName(String hallName) {
        HallName = hallName;
    }

    public void setAddress(String Address) {
        Address = Address;
    }

    public void setFunnelDay(String funnelDay) {
        FunnelDay = funnelDay;
    }
}