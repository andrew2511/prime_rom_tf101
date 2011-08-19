.class Lcom/google/android/music/jumper/MusicPreferences$2;
.super Landroid/database/ContentObserver;
.source "MusicPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/jumper/MusicPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/jumper/MusicPreferences;


# direct methods
.method constructor <init>(Lcom/google/android/music/jumper/MusicPreferences;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/music/jumper/MusicPreferences$2;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/music/jumper/MusicPreferences$2;->this$0:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {v0}, Lcom/google/android/music/jumper/MusicPreferences;->access$200(Lcom/google/android/music/jumper/MusicPreferences;)V

    .line 139
    return-void
.end method
