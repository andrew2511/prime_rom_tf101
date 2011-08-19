.class Lcom/android/calendar/SearchActivity$1;
.super Landroid/database/ContentObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SearchActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/SearchActivity$1;->this$0:Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Lcom/android/calendar/SearchActivity;->eventsChanged()V

    .line 92
    return-void
.end method
