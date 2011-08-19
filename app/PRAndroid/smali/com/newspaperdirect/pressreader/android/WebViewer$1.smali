.class Lcom/newspaperdirect/pressreader/android/WebViewer$1;
.super Ljava/lang/Object;
.source "WebViewer.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/WebViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/WebViewer;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/WebViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/WebViewer$1;->this$0:Lcom/newspaperdirect/pressreader/android/WebViewer;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
