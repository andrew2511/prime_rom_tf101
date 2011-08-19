.class Lcom/asus/mygazine/CalendarUtils$1;
.super Landroid/database/ContentObserver;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/mygazine/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/mygazine/CalendarUtils;


# direct methods
.method constructor <init>(Lcom/asus/mygazine/CalendarUtils;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/asus/mygazine/CalendarUtils$1;->this$0:Lcom/asus/mygazine/CalendarUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget;->getInstance()Lcom/asus/mygazine/MyGazineWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/MyGazineWidget;->addCommand(I)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    invoke-static {}, Lcom/asus/mygazine/MyGazineWidget2;->getInstance()Lcom/asus/mygazine/MyGazineWidget2;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/asus/mygazine/MyGazineWidget2;->addCommand(I)V

    .line 55
    :cond_1
    return-void
.end method
