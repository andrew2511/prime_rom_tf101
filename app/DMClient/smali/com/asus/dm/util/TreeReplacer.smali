.class public Lcom/asus/dm/util/TreeReplacer;
.super Ljava/lang/Object;
.source "TreeReplacer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TreeReplacer"


# instance fields
.field mResId:I

.field final serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "pContext"
    .parameter "resId"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lcom/asus/dm/util/TreeReplacer;->mResId:I

    .line 20
    invoke-static {p1}, Lcom/asus/dm/util/UniqueId;->getInstances(Landroid/content/Context;)Lcom/asus/dm/util/UniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dm/util/UniqueId;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/util/TreeReplacer;->serialNumber:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static getTreeReplacer(Landroid/content/Context;I)Lcom/asus/dm/util/TreeReplacer;
    .locals 3
    .parameter "pContext"
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dm/exception/NoSuchTreeException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, ret:Lcom/asus/dm/util/TreeReplacer;
    packed-switch p1, :pswitch_data_0

    .line 52
    new-instance v1, Lcom/asus/dm/exception/NoSuchTreeException;

    invoke-direct {v1}, Lcom/asus/dm/exception/NoSuchTreeException;-><init>()V

    throw v1

    .line 28
    :pswitch_0
    new-instance v0, Lcom/asus/dm/util/TmoTreeReplacer;

    .end local v0           #ret:Lcom/asus/dm/util/TreeReplacer;
    invoke-direct {v0, p0, p1}, Lcom/asus/dm/util/TmoTreeReplacer;-><init>(Landroid/content/Context;I)V

    .line 29
    .restart local v0       #ret:Lcom/asus/dm/util/TreeReplacer;
    const-string v1, "TreeReplacer"

    const-string v2, "use TmoTreeReplacer"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-object v0

    .line 34
    :pswitch_1
    new-instance v0, Lcom/asus/dm/util/TreeReplacer;

    .end local v0           #ret:Lcom/asus/dm/util/TreeReplacer;
    invoke-direct {v0, p0, p1}, Lcom/asus/dm/util/TreeReplacer;-><init>(Landroid/content/Context;I)V

    .line 35
    .restart local v0       #ret:Lcom/asus/dm/util/TreeReplacer;
    const-string v1, "TreeReplacer"

    const-string v2, "use TreeReplacer"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_2
    new-instance v0, Lcom/asus/dm/util/AsusTreeReplacer;

    .end local v0           #ret:Lcom/asus/dm/util/TreeReplacer;
    invoke-direct {v0, p0, p1}, Lcom/asus/dm/util/AsusTreeReplacer;-><init>(Landroid/content/Context;I)V

    .line 40
    .restart local v0       #ret:Lcom/asus/dm/util/TreeReplacer;
    const-string v1, "TreeReplacer"

    const-string v2, "use AsusTreeReplacer"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_3
    new-instance v0, Lcom/asus/dm/util/TestTreeReplacer;

    .end local v0           #ret:Lcom/asus/dm/util/TreeReplacer;
    invoke-direct {v0, p0, p1}, Lcom/asus/dm/util/TestTreeReplacer;-><init>(Landroid/content/Context;I)V

    .line 45
    .restart local v0       #ret:Lcom/asus/dm/util/TreeReplacer;
    const-string v1, "TreeReplacer"

    const-string v2, "use TestTreeReplacer"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_4
    new-instance v0, Lcom/asus/dm/util/TelUsTreeReplacer;

    .end local v0           #ret:Lcom/asus/dm/util/TreeReplacer;
    invoke-direct {v0, p0, p1}, Lcom/asus/dm/util/TelUsTreeReplacer;-><init>(Landroid/content/Context;I)V

    .line 49
    .restart local v0       #ret:Lcom/asus/dm/util/TreeReplacer;
    const-string v1, "TreeReplacer"

    const-string v2, "use TelUsTreeReplacer"

    invoke-static {v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x7f050001
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method do_carrier_require(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "content"

    .prologue
    .line 59
    return-object p1
.end method

.method process(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "content"

    .prologue
    .line 64
    const-string v0, "IMEI:352356028791235"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "IMEI:352356028791235"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMEI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/util/TreeReplacer;->serialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/asus/dm/util/TreeReplacer;->do_carrier_require(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
