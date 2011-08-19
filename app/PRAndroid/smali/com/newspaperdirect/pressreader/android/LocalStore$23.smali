.class Lcom/newspaperdirect/pressreader/android/LocalStore$23;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->onCategoryClicked(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

.field private final synthetic val$newspapers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->val$newspapers:Ljava/util/List;

    .line 947
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/LocalStore$23;)Lcom/newspaperdirect/pressreader/android/LocalStore;
    .locals 1
    .parameter

    .prologue
    .line 947
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    return-object v0
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 949
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    :goto_0
    return-void

    .line 950
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 951
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$8(Lcom/newspaperdirect/pressreader/android/LocalStore;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->val$newspapers:Ljava/util/List;

    invoke-static {v4, v5}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$46(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/newspaperdirect/pressreader/android/LocalStore$NewspapersListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 952
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v2, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->NewspaperList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$39(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    .line 953
    new-instance v1, Lcom/newspaperdirect/pressreader/android/LocalStore$23$1;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$23;->val$newspapers:Ljava/util/List;

    invoke-direct {v1, p0, v2, v0}, Lcom/newspaperdirect/pressreader/android/LocalStore$23$1;-><init>(Lcom/newspaperdirect/pressreader/android/LocalStore$23;Ljava/util/List;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    .line 991
    const/4 v3, 0x0

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/LocalStore$23$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
