.class Lcom/asus/mygazine/ReaderUtils$2;
.super Landroid/database/ContentObserver;
.source "ReaderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/ReaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/ReaderUtils;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/ReaderUtils;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/asus/mygazine/ReaderUtils$2;->this$0:Lcom/asus/mygazine/ReaderUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 42
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/MyGazineWidget2;->addCommand(I)V

    .line 45
    :cond_0
    return-void
.end method
