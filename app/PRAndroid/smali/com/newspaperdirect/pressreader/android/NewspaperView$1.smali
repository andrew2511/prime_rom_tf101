.class Lcom/newspaperdirect/pressreader/android/NewspaperView$1;
.super Ljava/lang/Object;
.source "NewspaperView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewspaperView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$1;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$1;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0, v2}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$0(Lcom/newspaperdirect/pressreader/android/NewspaperView;Z)V

    .line 125
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "popup_tools_invisibility"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewspaperView$1;->this$0:Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/NewspaperView;->access$1(Lcom/newspaperdirect/pressreader/android/NewspaperView;)V

    .line 127
    return v2
.end method
