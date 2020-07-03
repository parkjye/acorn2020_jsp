package test.playlist.dto;

public class PlayListDto {
	private int num;
	private String check;
	private String title;
	private String singer;
	private String time;
	
	public PlayListDto() {}

	public PlayListDto(int num, String check, String title, String singer, String time) {
		super();
		this.num = num;
		this.check = check;
		this.title = title;
		this.singer = singer;
		this.time = time;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCheck() {
		return check;
	}

	public void setCheck(String check) {
		this.check = check;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	
}
