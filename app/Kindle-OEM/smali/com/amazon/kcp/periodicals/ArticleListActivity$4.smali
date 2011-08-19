.class Lcom/amazon/kcp/periodicals/ArticleListActivity$4;
.super Ljava/lang/Object;
.source "ArticleListActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ArticleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ArticleListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$4;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ArticleListActivity$4;->this$0:Lcom/amazon/kcp/periodicals/ArticleListActivity;

    invoke-static {v0, p2}, Lcom/amazon/kcp/periodicals/ArticleListActivity;->access$000(Lcom/amazon/kcp/periodicals/ArticleListActivity;Ljava/lang/String;)V

    .line 152
    return-void
.end method
