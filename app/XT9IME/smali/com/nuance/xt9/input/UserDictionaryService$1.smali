.class Lcom/nuance/xt9/input/UserDictionaryService$1;
.super Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;
.source "UserDictionaryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/xt9/input/UserDictionaryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/UserDictionaryService;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/UserDictionaryService;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-direct {p0}, Lcom/nuance/xt9/input/IUserDictionaryConfig$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUserSelectedLanguageId()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v0

    return v0
.end method

.method public isChineseSimplifyAvailable()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$000(Lcom/nuance/xt9/input/UserDictionaryService;)V

    .line 178
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    sget v1, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChineseTraditionalAvailable()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$000(Lcom/nuance/xt9/input/UserDictionaryService;)V

    .line 161
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    sget v1, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLanguageChange()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 145
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v0

    .line 146
    .local v0, languageID:I
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    move v1, v4

    .line 154
    :goto_0
    return v1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-ne v1, v2, :cond_2

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$500(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$500(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 151
    goto :goto_0

    .line 154
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportChineseSimplify()Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/nuance/xt9/input/UserDictionaryService$1;->isChineseSimplifyAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v0

    sget v1, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportChineseTraditional()Z
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/nuance/xt9/input/UserDictionaryService$1;->isChineseTraditionalAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v0

    sget v1, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-ne v0, v1, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    .local p2, userDictionaries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/nuance/xt9/input/UserDictionaryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$000(Lcom/nuance/xt9/input/UserDictionaryService;)V

    .line 111
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "ChineseSimpDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v0

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "ChineseTradDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    const-string v0, "AlphaUdbDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v0, "AlphaAsdbDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    :goto_0
    sget-object v0, Lcom/nuance/xt9/input/UserDictionaryService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 122
    :cond_3
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$202(Lcom/nuance/xt9/input/UserDictionaryService;I)I

    .line 124
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    const-string v0, "ChineseSimpDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$1;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/xt9/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    const-string v0, "ChineseTradDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_5
    const-string v0, "AlphaUdbDictionary"

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
