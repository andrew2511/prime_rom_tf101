.class Landroid/test/LoaderTestCase$3;
.super Landroid/os/Handler;
.source "LoaderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/test/LoaderTestCase;->getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/test/LoaderTestCase;

.field final synthetic val$listener:Landroid/content/Loader$OnLoadCompleteListener;

.field final synthetic val$loader:Landroid/content/Loader;


# direct methods
.method constructor <init>(Landroid/test/LoaderTestCase;Landroid/os/Looper;Landroid/content/Loader;Landroid/content/Loader$OnLoadCompleteListener;)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Landroid/test/LoaderTestCase$3;->this$0:Landroid/test/LoaderTestCase;

    iput-object p3, p0, Landroid/test/LoaderTestCase$3;->val$loader:Landroid/content/Loader;

    iput-object p4, p0, Landroid/test/LoaderTestCase$3;->val$listener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/test/LoaderTestCase$3;->val$loader:Landroid/content/Loader;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/test/LoaderTestCase$3;->val$listener:Landroid/content/Loader$OnLoadCompleteListener;

    invoke-virtual {v0, v1, v2}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 81
    iget-object v0, p0, Landroid/test/LoaderTestCase$3;->val$loader:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 82
    return-void
.end method
