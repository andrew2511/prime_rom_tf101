.class Lcom/google/android/youtube/core/player/WarningHelper$1;
.super Ljava/lang/Object;
.source "WarningHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/WarningHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/WarningHelper$Listener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/WarningHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/youtube/core/player/WarningHelper$1;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/player/WarningHelper$1;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/WarningHelper;->access$000(Lcom/google/android/youtube/core/player/WarningHelper;)Lcom/google/android/youtube/core/player/WarningHelper$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/WarningHelper$1;->this$0:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/WarningHelper$Listener;->onWarningDeclined(Lcom/google/android/youtube/core/player/WarningHelper;)V

    .line 60
    return-void
.end method
