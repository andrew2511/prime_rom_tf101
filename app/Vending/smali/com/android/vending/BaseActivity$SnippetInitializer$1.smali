.class Lcom/android/vending/BaseActivity$SnippetInitializer$1;
.super Landroid/database/DataSetObserver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/BaseActivity$SnippetInitializer;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/api/AssetService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/vending/BaseActivity$SnippetInitializer;

.field final synthetic val$this$0:Lcom/android/vending/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/BaseActivity$SnippetInitializer;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2181
    iput-object p1, p0, Lcom/android/vending/BaseActivity$SnippetInitializer$1;->this$1:Lcom/android/vending/BaseActivity$SnippetInitializer;

    iput-object p2, p0, Lcom/android/vending/BaseActivity$SnippetInitializer$1;->val$this$0:Lcom/android/vending/BaseActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2184
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2185
    iget-object v0, p0, Lcom/android/vending/BaseActivity$SnippetInitializer$1;->this$1:Lcom/android/vending/BaseActivity$SnippetInitializer;

    invoke-virtual {v0}, Lcom/android/vending/BaseActivity$SnippetInitializer;->updateSnippet()V

    .line 2186
    return-void
.end method
