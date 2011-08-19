.class public Lcom/layar/data/social/SocialManager;
.super Ljava/lang/Object;
.source "SocialManager.java"


# instance fields
.field private communicator:Lcom/layar/data/social/SocialCommunicator;

.field private final context:Landroid/content/Context;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/layar/data/social/SocialManager;->context:Landroid/content/Context;

    .line 19
    new-instance v0, Lcom/layar/data/social/SocialCommunicator;

    invoke-direct {v0}, Lcom/layar/data/social/SocialCommunicator;-><init>()V

    iput-object v0, p0, Lcom/layar/data/social/SocialManager;->communicator:Lcom/layar/data/social/SocialCommunicator;

    .line 21
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.social.linked.ALL"

    .line 22
    const/4 v2, 0x1

    .line 21
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 23
    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/layar/data/social/SocialManager;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/layar/data/social/SocialManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/social/SocialManager;->preferences:Landroid/content/SharedPreferences;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/layar/data/social/SocialManager;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public associate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V
    .locals 1
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/layar/data/social/SocialManager;->communicator:Lcom/layar/data/social/SocialCommunicator;

    invoke-virtual {v0, p1, p2}, Lcom/layar/data/social/SocialCommunicator;->getAssociateURL(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialAssociateHandler;)V

    .line 111
    return-void
.end method

.method public getRememberMyChoiceOnComment()Z
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings.social.remember.comment"

    .line 101
    const/4 v2, 0x0

    .line 100
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSocialLinked(Ljava/lang/String;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 87
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.linked."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isSocialPrefered(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.prefered."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v2, 0x1

    .line 95
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAllSocialsUnlinked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const-string v0, "facebook"

    invoke-virtual {p0, v0, v1}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 56
    const-string v0, "twitter"

    invoke-virtual {p0, v0, v1}, Lcom/layar/data/social/SocialManager;->setSocialsLinked(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public setRememberMyChoiceOnComment(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings.social.remember.comment"

    .line 106
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 105
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method

.method public setShouldComment(Ljava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "doComment"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.comment."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    :cond_0
    return-void
.end method

.method public setShouldPost(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .parameter "type"
    .parameter "doPost"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.post."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 39
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    :cond_0
    return-void
.end method

.method public setSocialsLinked(Ljava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "linked"

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "twitter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    :cond_0
    if-nez p2, :cond_1

    .line 63
    invoke-virtual {p0, p1, v1}, Lcom/layar/data/social/SocialManager;->setShouldComment(Ljava/lang/String;Z)V

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/layar/data/social/SocialManager;->setShouldPost(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.linked."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    :cond_2
    return-void
.end method

.method public setSocialsPrefered(Ljava/lang/String;Z)V
    .locals 3
    .parameter "type"
    .parameter "prefered"

    .prologue
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.prefered."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public shouldComment(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.comment."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldPost(Ljava/lang/String;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/layar/data/social/SocialManager;->isSocialLinked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/layar/data/social/SocialManager;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "settings.social.post."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public unAssociate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V
    .locals 1
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/layar/data/social/SocialManager;->communicator:Lcom/layar/data/social/SocialCommunicator;

    invoke-virtual {v0, p1, p2}, Lcom/layar/data/social/SocialCommunicator;->disassociate(Ljava/lang/String;Lcom/layar/data/social/SocialCommunicator$SocialDisassociateHandler;)V

    .line 115
    return-void
.end method
