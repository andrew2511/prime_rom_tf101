.class Lcom/newspaperdirect/pressreader/android/LocalStore$11;
.super Ljava/lang/Object;
.source "LocalStore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/LocalStore;->selectService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

.field private final synthetic val$names:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/LocalStore;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->val$names:[Ljava/lang/String;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->val$names:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->get(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$36(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 603
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$6(Lcom/newspaperdirect/pressreader/android/LocalStore;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V

    .line 604
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;->CountryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$2(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eCategory;)V

    .line 605
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/LocalStore$eView;->CategoryList:Lcom/newspaperdirect/pressreader/android/LocalStore$eView;

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$3(Lcom/newspaperdirect/pressreader/android/LocalStore;Lcom/newspaperdirect/pressreader/android/LocalStore$eView;)V

    .line 606
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$0(Lcom/newspaperdirect/pressreader/android/LocalStore;Z)V

    .line 607
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/LocalStore$11;->this$0:Lcom/newspaperdirect/pressreader/android/LocalStore;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/LocalStore;->access$5(Lcom/newspaperdirect/pressreader/android/LocalStore;)V

    .line 608
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 609
    return-void
.end method
