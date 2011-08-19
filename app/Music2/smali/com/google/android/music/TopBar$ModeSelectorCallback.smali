.class Lcom/google/android/music/TopBar$ModeSelectorCallback;
.super Ljava/lang/Object;
.source "TopBar.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeSelectorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TopBar;


# direct methods
.method private constructor <init>(Lcom/google/android/music/TopBar;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/music/TopBar$ModeSelectorCallback;->this$0:Lcom/google/android/music/TopBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/TopBar;Lcom/google/android/music/TopBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/music/TopBar$ModeSelectorCallback;-><init>(Lcom/google/android/music/TopBar;)V

    return-void
.end method


# virtual methods
.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 261
    invoke-static {}, Lcom/google/android/music/TopBar;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TopBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModeSelectorCallback.onMusicMenuItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TopBar$ModeSelectorCallback;->this$0:Lcom/google/android/music/TopBar;

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/music/TopBar;->access$300(Lcom/google/android/music/TopBar;I)V

    .line 263
    const/4 v0, 0x1

    return v0
.end method
