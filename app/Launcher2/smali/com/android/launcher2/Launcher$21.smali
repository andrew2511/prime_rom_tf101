.class Lcom/android/launcher2/Launcher$21;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->unlockScreenOrientation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 3730
    iput-object p1, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3732
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    .line 3733
    return-void
.end method
