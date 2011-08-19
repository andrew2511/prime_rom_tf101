.class Lcom/android/vending/CheckinUpdater$4;
.super Ljava/lang/Object;
.source "CheckinUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/CheckinUpdater;->checkForUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CheckinUpdater;


# direct methods
.method constructor <init>(Lcom/android/vending/CheckinUpdater;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/vending/CheckinUpdater$4;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 292
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/VendingApplication;->getAccountList()Ljava/util/ArrayList;

    move-result-object v1

    .line 294
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 296
    .local v3, numNonAutoUpdates:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 297
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/vending/CheckinUpdater$4;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v4, v0}, Lcom/android/vending/CheckinUpdater;->access$200(Lcom/android/vending/CheckinUpdater;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/vending/CheckinUpdater$4;->this$0:Lcom/android/vending/CheckinUpdater;

    invoke-static {v4}, Lcom/android/vending/CheckinUpdater;->access$300(Lcom/android/vending/CheckinUpdater;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/vending/CheckinUpdater;->access$400(Landroid/content/Context;I)V

    .line 301
    return-void
.end method
