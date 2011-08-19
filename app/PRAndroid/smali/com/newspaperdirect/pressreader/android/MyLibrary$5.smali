.class Lcom/newspaperdirect/pressreader/android/MyLibrary$5;
.super Ljava/lang/Object;
.source "MyLibrary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;->showNoLayoutTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

.field private final synthetic val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 308
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    .end local p1
    :goto_0
    return-void

    .line 309
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;->val$flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 310
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const v0, 0x7f0c0044

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NewspaperView.DisableNoLayoutTip"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    const-class v3, Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v4}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
