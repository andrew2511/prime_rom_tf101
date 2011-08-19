.class Lcom/nuance/xt9/input/UserDictionaryService$2;
.super Lcom/nuance/xt9/input/IUserDictionary$Stub;
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
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/xt9/input/UserDictionaryService;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/UserDictionaryService;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-direct {p0}, Lcom/nuance/xt9/input/IUserDictionary$Stub;-><init>()V

    .line 193
    const-string v0, "IUserDictionary"

    iput-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userdic"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p2}, Lcom/nuance/xt9/input/UserDictionary;->add(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1, p2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$702(Lcom/nuance/xt9/input/UserDictionaryService;Lcom/nuance/xt9/input/UserWord;)Lcom/nuance/xt9/input/UserWord;

    .line 200
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userdic"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 219
    invoke-interface {v0, p2}, Lcom/nuance/xt9/input/UserDictionary;->delete(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v1

    .line 221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public find(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userdic"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p2}, Lcom/nuance/xt9/input/UserDictionary;->find(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v1

    .line 229
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finish(Ljava/lang/String;)V
    .locals 2
    .parameter "userdic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0}, Lcom/nuance/xt9/input/UserDictionary;->finish()V

    .line 300
    :cond_0
    return-void
.end method

.method public getCurrentUserWord()Lcom/nuance/xt9/input/UserWord;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v0}, Lcom/nuance/xt9/input/UserDictionaryService;->access$700(Lcom/nuance/xt9/input/UserDictionaryService;)Lcom/nuance/xt9/input/UserWord;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 3
    .parameter "userdic"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, ret:Z
    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0, p2}, Lcom/nuance/xt9/input/UserDictionary;->getFirst(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v1

    .line 238
    :cond_0
    return v1
.end method

.method public getNext(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 3
    .parameter "userdic"
    .parameter "word"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, ret:Z
    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p2}, Lcom/nuance/xt9/input/UserDictionary;->getNext(Lcom/nuance/xt9/input/UserWord;)Z

    move-result v1

    .line 247
    :cond_0
    return v1
.end method

.method public hasActiveSequence(Ljava/lang/String;)Z
    .locals 2
    .parameter "userdic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/nuance/xt9/input/UserDictionary;->hasActiveSequence()Z

    move-result v1

    .line 308
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPinyinMode()Z
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-ne v1, v2, :cond_1

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v2

    const-string v3, "pinyin"

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, inputModeName:Ljava/lang/String;
    const-string v1, "pinyin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 326
    const/4 v1, 0x1

    .line 329
    .end local v0           #inputModeName:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStrokeOrBPMFMode()Z
    .locals 4

    .prologue
    .line 311
    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v1

    .line 312
    .local v1, languageID:I
    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-ne v1, v2, :cond_2

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "bpmf"

    invoke-static {v2, v1, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, inputModeName:Ljava/lang/String;
    const-string v2, "stroke"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "bpmf"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 316
    :cond_1
    const/4 v2, 0x1

    .line 319
    .end local v0           #inputModeName:Ljava/lang/String;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public resetCurrentUserWord()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    new-instance v1, Lcom/nuance/xt9/input/UserWord;

    invoke-direct {v1}, Lcom/nuance/xt9/input/UserWord;-><init>()V

    invoke-static {v0, v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$702(Lcom/nuance/xt9/input/UserDictionaryService;Lcom/nuance/xt9/input/UserWord;)Lcom/nuance/xt9/input/UserWord;

    .line 213
    return-void
.end method

.method public start(Ljava/lang/String;)Z
    .locals 4
    .parameter "userdic"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$000(Lcom/nuance/xt9/input/UserDictionaryService;)V

    .line 269
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$400(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/nuance/xt9/input/InputMethods;->getSavedLanguage(Landroid/content/SharedPreferences;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$202(Lcom/nuance/xt9/input/UserDictionaryService;I)I

    .line 271
    const-string v1, "ChineseSimpDictionary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    if-eq v1, v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_SIMP_LANGUAGE:I

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$202(Lcom/nuance/xt9/input/UserDictionaryService;I)I

    .line 275
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 276
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$800(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    .line 290
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/nuance/xt9/input/UserDictionary;->start(I)Z

    .line 292
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 280
    :cond_2
    const-string v1, "ChineseTradDictionary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    if-eq v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$100(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/LinkedList;

    move-result-object v1

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    sget v2, Lcom/nuance/xt9/input/UserDictionaryService;->DEFAULT_CHINESE_TRAD_LANGUAGE:I

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$202(Lcom/nuance/xt9/input/UserDictionaryService;I)I

    .line 284
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/xt9/input/InputMethods;->saveLanguage(Landroid/content/SharedPreferences;I)V

    .line 285
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$300(Lcom/nuance/xt9/input/UserDictionaryService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/xt9/input/Settings;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$200(Lcom/nuance/xt9/input/UserDictionaryService;)I

    move-result v2

    iget-object v3, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$900(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nuance/xt9/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Lcom/nuance/xt9/input/UserWord;Lcom/nuance/xt9/input/UserWord;)Z
    .locals 2
    .parameter "userdic"
    .parameter "oldWord"
    .parameter "newWord"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1}, Lcom/nuance/xt9/input/UserDictionaryService;->access$600(Lcom/nuance/xt9/input/UserDictionaryService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/xt9/input/UserDictionary;

    .local v0, dic:Lcom/nuance/xt9/input/UserDictionary;
    if-eqz v0, :cond_1

    .line 254
    invoke-interface {v0, p2, p3}, Lcom/nuance/xt9/input/UserDictionary;->update(Lcom/nuance/xt9/input/UserWord;Lcom/nuance/xt9/input/UserWord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1, p3}, Lcom/nuance/xt9/input/UserDictionaryService;->access$702(Lcom/nuance/xt9/input/UserDictionaryService;Lcom/nuance/xt9/input/UserWord;)Lcom/nuance/xt9/input/UserWord;

    .line 256
    const/4 v1, 0x1

    .line 261
    :goto_0
    return v1

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/nuance/xt9/input/UserDictionaryService$2;->this$0:Lcom/nuance/xt9/input/UserDictionaryService;

    invoke-static {v1, p2}, Lcom/nuance/xt9/input/UserDictionaryService;->access$702(Lcom/nuance/xt9/input/UserDictionaryService;Lcom/nuance/xt9/input/UserWord;)Lcom/nuance/xt9/input/UserWord;

    .line 261
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
