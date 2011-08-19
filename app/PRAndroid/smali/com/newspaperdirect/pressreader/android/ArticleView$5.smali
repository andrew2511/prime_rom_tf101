.class Lcom/newspaperdirect/pressreader/android/ArticleView$5;
.super Ljava/lang/Object;
.source "ArticleView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/ArticleView;->setupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/ArticleView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$5;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$5;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    add-int/lit8 v1, p2, 0x32

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$1(Lcom/newspaperdirect/pressreader/android/ArticleView;I)V

    .line 261
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 257
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 252
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "article_view_text_size"

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$5;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$0(Lcom/newspaperdirect/pressreader/android/ArticleView;)I

    move-result v2

    const/16 v3, 0x32

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/ArticleView$5;->this$0:Lcom/newspaperdirect/pressreader/android/ArticleView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/ArticleView;->access$3(Lcom/newspaperdirect/pressreader/android/ArticleView;)V

    .line 254
    return-void
.end method
