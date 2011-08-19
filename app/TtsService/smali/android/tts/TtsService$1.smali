.class Landroid/tts/TtsService$1;
.super Landroid/speech/tts/ITts$Stub;
.source "TtsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tts/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/tts/TtsService;


# direct methods
.method constructor <init>(Landroid/tts/TtsService;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-direct {p0}, Landroid/speech/tts/ITts$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addEarcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1365
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/tts/TtsService;->access$2700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1366
    return-void
.end method

.method public addEarconFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "filename"

    .prologue
    .line 1378
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/tts/TtsService;->access$2800(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    return-void
.end method

.method public addSpeech(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "callingApp"
    .parameter "text"
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/tts/TtsService;->access$2500(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1339
    return-void
.end method

.method public addSpeechFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "callingApp"
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 1351
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/tts/TtsService;->access$2600(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    return-void
.end method

.method public areDefaultsEnforced()Z
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0}, Landroid/tts/TtsService;->access$3200(Landroid/tts/TtsService;)Z

    move-result v0

    return v0
.end method

.method public getDefaultEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0}, Landroid/tts/TtsService;->access$600(Landroid/tts/TtsService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0}, Landroid/tts/TtsService;->access$3000(Landroid/tts/TtsService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "lang"
    .parameter "country"
    .parameter "variant"
    .parameter "params"

    .prologue
    .line 1415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 1416
    aget-object v1, p4, v0

    .line 1417
    .local v1, param:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1418
    const-string v2, "engine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1419
    iget-object v2, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v2}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p4, v3

    invoke-static {v2, v3}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;)I

    .line 1424
    .end local v1           #param:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v2}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Landroid/tts/TtsService;->access$2900(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1415
    .restart local v1       #param:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public isSpeaking()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1324
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0}, Landroid/tts/TtsService;->access$2300(Landroid/tts/TtsService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$2400(Landroid/tts/TtsService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playEarcon(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 2
    .parameter "callingApp"
    .parameter "earcon"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1288
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v1}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, v0}, Landroid/tts/TtsService;->access$2000(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public playSilence(Ljava/lang/String;JI[Ljava/lang/String;)I
    .locals 6
    .parameter "callingApp"
    .parameter "duration"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1303
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v5, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 1305
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1307
    .restart local v5       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/tts/TtsService;->access$2100(Landroid/tts/TtsService;Ljava/lang/String;JILjava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public registerCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    .locals 1
    .parameter "packageName"
    .parameter "cb"

    .prologue
    .line 1234
    if-eqz p2, :cond_0

    .line 1235
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1600(Landroid/tts/TtsService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1236
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1700(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    const/4 v0, 0x0

    .line 1239
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setEngineByPackageName(Ljava/lang/String;)I
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/tts/TtsService;->access$500(Landroid/tts/TtsService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "callingApp"
    .parameter "lang"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 1445
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Landroid/tts/TtsService;->access$700(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setPitch(Ljava/lang/String;I)I
    .locals 1
    .parameter "callingApp"
    .parameter "pitch"

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/tts/TtsService;->access$1300(Landroid/tts/TtsService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setSpeechRate(Ljava/lang/String;I)I
    .locals 1
    .parameter "callingApp"
    .parameter "speechRate"

    .prologue
    .line 1389
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/tts/TtsService;->access$1100(Landroid/tts/TtsService;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public speak(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)I
    .locals 2
    .parameter "callingApp"
    .parameter "text"
    .parameter "queueMode"
    .parameter "params"

    .prologue
    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1269
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v1}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, v0}, Landroid/tts/TtsService;->access$1900(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)I

    move-result v1

    return v1
.end method

.method public stop(Ljava/lang/String;)I
    .locals 1
    .parameter "callingApp"

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/tts/TtsService;->access$2200(Landroid/tts/TtsService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "callingApp"
    .parameter "text"
    .parameter "params"
    .parameter "filename"

    .prologue
    .line 1464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1465
    .local v0, speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1468
    .restart local v0       #speakingParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v1}, Landroid/tts/TtsService;->access$1800(Landroid/tts/TtsService;)Landroid/tts/TtsService;

    move-result-object v1

    invoke-static {v1, p1, p2, v0, p4}, Landroid/tts/TtsService;->access$3100(Landroid/tts/TtsService;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public unregisterCallback(Ljava/lang/String;Landroid/speech/tts/ITtsCallback;)I
    .locals 1
    .parameter "packageName"
    .parameter "cb"

    .prologue
    .line 1243
    if-eqz p2, :cond_0

    .line 1244
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1700(Landroid/tts/TtsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v0, p0, Landroid/tts/TtsService$1;->this$0:Landroid/tts/TtsService;

    invoke-static {v0}, Landroid/tts/TtsService;->access$1600(Landroid/tts/TtsService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1246
    const/4 v0, 0x0

    .line 1248
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
