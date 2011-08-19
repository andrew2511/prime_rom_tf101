.class Lcom/google/android/music/jumper/MusicPreferences$3;
.super Ljava/lang/Object;
.source "MusicPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/jumper/MusicPreferences;->notifyStreamingAccountsReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$3;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$200(Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 146
    return-void
.end method
