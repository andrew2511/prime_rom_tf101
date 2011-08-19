.class public Lnet/yostore/aws/view/common/RegisterAfterActivity;
.super Landroid/app/Activity;
.source "RegisterAfterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterAfterActivity"


# instance fields
.field private final GB:J

.field private final KB:J

.field private final MB:J

.field private final TB:J

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field application:Lcom/ecareme/asuswebstorage/ASUSWebstorage;

.field ctx:Landroid/content/Context;

.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 204
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->KB:J

    .line 205
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->MB:J

    .line 206
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->GB:J

    .line 207
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->TB:J

    .line 26
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/RegisterAfterActivity;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-void
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/RegisterAfterActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/RegisterAfterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/RegisterAfterActivity;->displayCapacity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private displayCapacity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "capacity"

    .prologue
    .line 194
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/RegisterAfterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, capDsp:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 196
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    .local v1, capInt:I
    const v2, 0xfa000

    if-ge v1, v2, :cond_0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit16 v3, v1, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .end local v1           #capInt:I
    :cond_0
    return-object v0
.end method

.method private getSizeDisp(J)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const-wide v7, 0x10000000000L

    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 209
    cmp-long v0, p1, v7

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v7

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 210
    :cond_0
    cmp-long v0, p1, v5

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_1
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_2
    cmp-long v0, p1, v1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public backFunction(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public exitFunction(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->exitAp(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iput-object p0, p0, Lnet/yostore/aws/view/common/RegisterAfterActivity;->ctx:Landroid/content/Context;

    .line 37
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterAfterActivity;->setContentView(I)V

    .line 38
    new-instance v0, Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;

    invoke-direct {v0, p0, v1}, Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;-><init>(Lnet/yostore/aws/view/common/RegisterAfterActivity;Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;)V

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/RegisterAfterActivity$getUIdataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 39
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 183
    packed-switch p1, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 186
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterAfterActivity;->backFunction(Landroid/view/View;)V

    .line 187
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
