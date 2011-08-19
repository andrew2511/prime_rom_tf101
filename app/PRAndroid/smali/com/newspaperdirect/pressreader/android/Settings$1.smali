.class Lcom/newspaperdirect/pressreader/android/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Settings;->sendFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Settings;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Settings$1;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Settings$1;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Settings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Settings$1;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    .line 137
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/Settings$1;->this$0:Lcom/newspaperdirect/pressreader/android/Settings;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    const/4 v2, 0x0

    .line 136
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 140
    :cond_0
    return-void
.end method
