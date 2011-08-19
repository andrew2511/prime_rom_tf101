.class Lcom/asus/mygazine/EmailUtils$1;
.super Landroid/database/ContentObserver;
.source "EmailUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/EmailUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/EmailUtils;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/EmailUtils;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/asus/mygazine/EmailUtils$1;->this$0:Lcom/asus/mygazine/EmailUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 33
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/MyGazineWidget2;->addCommand(I)V

    .line 35
    :cond_0
    return-void
.end method
