.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;
.super Ljava/lang/Object;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardSelectedListener"
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mSelectedIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Z)V
    .locals 1
    .parameter
    .parameter "multipleSelect"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 509
    if-eqz p2, :cond_0

    .line 510
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    .line 512
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 515
    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    .line 516
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v1, selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;>;"
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 520
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 521
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 522
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v3, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$800(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)V

    .line 542
    .end local v0           #i:I
    .end local v1           #selectedVCardFileList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;>;"
    .end local v2           #size:I
    .end local p0
    :cond_2
    :goto_1
    return-void

    .line 527
    .restart local p0
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-static {v3, p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$900(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V

    goto :goto_1

    .line 529
    .restart local p0
    :cond_4
    const/4 v3, -0x2

    if-ne p2, v3, :cond_5

    .line 530
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    goto :goto_1

    .line 533
    :cond_5
    iput p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mCurrentIndex:I

    .line 534
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v3, :cond_2

    .line 535
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 536
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->mSelectedIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p3, :cond_1

    .line 546
    :cond_0
    const-string v0, "VCardImport"

    const-string v1, "Inconsist state in index %d (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 549
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method
