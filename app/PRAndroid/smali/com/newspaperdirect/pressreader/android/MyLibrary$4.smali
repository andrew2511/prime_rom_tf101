.class Lcom/newspaperdirect/pressreader/android/MyLibrary$4;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$4;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorize()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$4;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$4;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    const-class v3, Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->startActivity(Landroid/content/Intent;)V

    .line 258
    return-void
.end method

.method public onRegister()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$4;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->register(Landroid/app/Activity;)V

    .line 255
    return-void
.end method
