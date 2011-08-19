.class Lcom/newspaperdirect/pressreader/android/Welcome$2;
.super Ljava/lang/Object;
.source "Welcome.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Welcome;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Welcome;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Welcome;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Welcome$2;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome$2;->this$0:Lcom/newspaperdirect/pressreader/android/Welcome;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->finish()V

    .line 41
    const/4 v0, 0x1

    return v0
.end method
