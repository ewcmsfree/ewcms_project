package com.ewcms.frontweb;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.ewcms.content.particular.FrontParticularFacable;
import com.ewcms.content.particular.model.EmployeArticle;
import com.ewcms.content.particular.model.EmployeBasic;
import com.ewcms.content.particular.model.EnterpriseArticle;
import com.ewcms.content.particular.model.ProjectArticle;
import com.ewcms.content.particular.model.ProjectBasic;
import com.opensymphony.xwork2.ActionSupport;

public class MainHomeAction extends ActionSupport{
	@Autowired
	private FrontParticularFacable particularFac;
	public String execute(){
		
		return "success";
	}
	public List<ProjectArticle> getProjectChannel1Articles(){//项目审批信息 
		return particularFac.findProjectShenPiArticleLimit("APPROVAL", 5);
	}

	public List<ProjectArticle> getProjectChannel2Articles(){//项目 核准信息
		return particularFac.findProjectShenPiArticleLimit("APPROVED", 5);
	}
	public List<ProjectBasic> getProjectChannel3Articles(){//基本信息 
		return particularFac.findProjectBasicAll(5);
	}

	public List<ProjectArticle> getProjectChannel4Articles(){//招标投标 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel4")), 5);
	}
	public List<ProjectArticle> getProjectChannel5Articles(){//征地拆迁 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel5")),5);
	}

	public List<ProjectArticle> getProjectChannel6Articles(){//重大变更设计 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel6")), 5);
	}
	public List<ProjectArticle> getProjectChannel7Articles(){//施工管理  
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel7")),5);
	}

	public List<ProjectArticle> getProjectChannel8Articles(){//合同履约
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel8")), 5);
	}
	public List<ProjectArticle> getProjectChannel9Articles(){//质量安全
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel9")),5);
	}

	public List<ProjectArticle> getProjectChannel10Articles(){//资金管理 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel10")), 5);
	}
	public List<ProjectArticle> getProjectChannel11Articles(){//交（竣）验工 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel11")),5);
	}

	public List<ProjectArticle> getProjectChannel12Articles(){//土地招标 卖挂牌出让信息 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel12")), 5);
	}
	public List<ProjectArticle> getProjectChannel13Articles(){//国有土地使用权出让结果信息 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel13")),5);
	}

	public List<ProjectArticle> getProjectChannel14Articles(){//建设用地审批信息
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel14")), 5);
	}	
	public List<ProjectArticle> getProjectChannel15Articles(){//探矿权审批 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel15")),5);
	}

	public List<ProjectArticle> getProjectChannel16Articles(){//探矿权出让 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel16")), 5);
	}
	public List<ProjectArticle> getProjectChannel17Articles(){//采矿权审批 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel17")),5);
	}

	public List<ProjectArticle> getProjectChannel18Articles(){//采矿权出让 
		return particularFac.findProjectChannellArticleLimit(Integer.valueOf(getText("project.channel18")), 5);
	}
	
	public List<EmployeBasic> getRyjbxxArticles(){//人员 基本信息 
		return particularFac.findEmployeBasicAll(4);
	}	
	public List<EmployeArticle> getZyzgxxArticles(){//职业 资格 信息 
		return particularFac.findEmployeChannelArticleLimit(Integer.valueOf(getText("employe.zyzgxx")), 4);
	}
	
	
	public List<EnterpriseArticle> getLhxwjlxxEnterprises(){//从业单位 良好行为记录信息
		return particularFac.findEnterpriseChannelArticleLimit(Integer.valueOf(getText("enterprise.lhxwjlxx")), 4);
	}	
	public List<EnterpriseArticle> getBlxwjlxxEnterprises(){//从业单位不良行为记录信息
		return particularFac.findEnterpriseChannelArticleLimit(Integer.valueOf(getText("enterprise.blxwjlxx")),4);
	}	
}
