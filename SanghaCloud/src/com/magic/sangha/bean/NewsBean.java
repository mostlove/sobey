package com.magic.sangha.bean;

import java.io.Serializable;
import java.util.Date;

import net.sf.json.JSONArray;

/**
 *  新闻资讯
 * @author QimouXie
 *
 */
public class NewsBean implements Serializable {

	private static final long serialVersionUID = 2917249242002855292L;
	
	/**主键*/
	private Integer id;
	
	/**新闻标题*/
	private String title;
	
	/**内容*/
	private String content;
	
	/**内容简介*/
	private String introduction;
	
	/**图片地址*/
	private String imageUrl;
	
	/**新闻类型*/
	private Integer typeId;
	
	/**点赞数量*/
	private Integer likes;
	
	/**阅读数*/
	private Integer reads;
	
	/***真实阅读数*/
	private Integer realReads;
	
	/**是否外链 0表示 不是  1 表示是*/
	private Integer isUrl;
	
	/**外链地址*/
	private String linkUrl;
	
	/**是否投票 0 没有投票  1 有投票*/
	private Integer isVote;
	
	/**投票ID*/
	private Integer voteId;
	
	/**当前用户是否投票 未投票为 null*/
	private VoteUserBean isVoteUser;
	
	private JSONArray votes;
	
	/**是否显示 官方图标*/
	private Integer isShowIcon;
	
	/**文章创建时间*/
	private Date createTime = new Date();
	
	/**修改时间*/
	private Date updateTime = new Date();
	
	/**新闻发布者*/
	private Integer userId;
	
	/**发布者名字*/
	private String userName;
	
	/**banner是否置顶*/
	private Integer isBanner;
	
	/**新闻是否有效 0 表示无效  1 表示有效*/
	private Integer isValid;
	
	public Integer getRealReads() {
		return realReads;
	}


	public void setRealReads(Integer realReads) {
		this.realReads = realReads;
	}


	public NewsBean() {
		super();
	}
	
	
	public NewsBean(String title, String content,
			String introduction, String imageUrl, Integer typeId,
			Integer likes, Integer reads, Integer isUrl, Integer isVote,
			Integer voteId, Integer isShowIcon, Date createTime, Date updateTime) {
		super();
		this.title = title;
		this.content = content;
		this.introduction = introduction;
		this.imageUrl = imageUrl;
		this.typeId = typeId;
		this.likes = likes;
		this.reads = reads;
		this.isUrl = isUrl;
		this.isVote = isVote;
		this.voteId = voteId;
		this.isShowIcon = isShowIcon;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}


	public Integer getIsBanner() {
		return isBanner;
	}


	public void setIsBanner(Integer isBanner) {
		this.isBanner = isBanner;
	}


	public Integer getIsValid() {
		return isValid;
	}


	public void setIsValid(Integer isValid) {
		this.isValid = isValid;
	}


	public VoteUserBean getIsVoteUser() {
		return isVoteUser;
	}


	public void setIsVoteUser(VoteUserBean isVoteUser) {
		this.isVoteUser = isVoteUser;
	}


	public JSONArray getVotes() {
		return votes;
	}


	public void setVotes(JSONArray votes) {
		this.votes = votes;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Integer getUserId() {
		return userId;
	}


	public void setUserId(Integer userId) {
		this.userId = userId;
	}


	public String getLinkUrl() {
		return linkUrl;
	}


	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Integer getIsVote() {
		return isVote;
	}

	public void setIsVote(Integer isVote) {
		this.isVote = isVote;
	}

	public Integer getVoteId() {
		return voteId;
	}

	public void setVoteId(Integer voteId) {
		this.voteId = voteId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public Integer getLikes() {
		return likes;
	}

	public void setLikes(Integer likes) {
		this.likes = likes;
	}

	public Integer getReads() {
		return reads;
	}

	public void setReads(Integer reads) {
		this.reads = reads;
	}

	public Integer getIsUrl() {
		return isUrl;
	}

	public void setIsUrl(Integer isUrl) {
		this.isUrl = isUrl;
	}

	public Integer getIsShowIcon() {
		return isShowIcon;
	}

	public void setIsShowIcon(Integer isShowIcon) {
		this.isShowIcon = isShowIcon;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	
}
