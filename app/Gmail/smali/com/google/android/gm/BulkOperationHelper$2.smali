.class Lcom/google/android/gm/BulkOperationHelper$2;
.super Ljava/lang/Object;
.source "BulkOperationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/BulkOperationHelper;->addOrRemoveLabel(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/BulkOperationHelper;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$commandListener:Lcom/google/android/gm/CommandListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$conversations:Ljava/util/Collection;

.field final synthetic val$displayedLabel:Ljava/lang/String;

.field final synthetic val$opId:I

.field final synthetic val$operations:Lcom/google/android/gm/LabelOperations;

.field final synthetic val$uncommittedConversationState:Lcom/google/android/gm/LabelOperations;


# direct methods
.method constructor <init>(Lcom/google/android/gm/BulkOperationHelper;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/android/gm/BulkOperationHelper$2;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iput-object p2, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$account:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$operations:Lcom/google/android/gm/LabelOperations;

    iput-object p5, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$conversations:Ljava/util/Collection;

    iput-object p6, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$displayedLabel:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$uncommittedConversationState:Lcom/google/android/gm/LabelOperations;

    iput p8, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$opId:I

    iput-object p9, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/android/gm/BulkOperationHelper$2;->this$0:Lcom/google/android/gm/BulkOperationHelper;

    iget-object v1, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$account:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$operations:Lcom/google/android/gm/LabelOperations;

    iget-object v4, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$conversations:Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$displayedLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$uncommittedConversationState:Lcom/google/android/gm/LabelOperations;

    iget v7, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$opId:I

    iget-object v8, p0, Lcom/google/android/gm/BulkOperationHelper$2;->val$commandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gm/BulkOperationHelper;->performOperationInternal(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;Ljava/lang/String;Lcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 410
    return-void
.end method
