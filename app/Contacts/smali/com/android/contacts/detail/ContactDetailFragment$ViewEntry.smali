.class Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public actionIcon:I

.field public chatCapability:I

.field public collapseCount:I

.field public context:Landroid/content/Context;

.field public data:Ljava/lang/String;

.field public footerLine:Ljava/lang/CharSequence;

.field public id:J

.field public ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public intent:Landroid/content/Intent;

.field public isPrimary:Z

.field public kind:Ljava/lang/String;

.field public maxLines:I

.field public mimetype:Ljava/lang/String;

.field public presence:I

.field public resPackageName:Ljava/lang/String;

.field public secondaryActionIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public type:I

.field public typeString:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    .line 701
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 702
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    .line 705
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->context:Landroid/content/Context;

    .line 706
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->resPackageName:Ljava/lang/String;

    .line 707
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    .line 708
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isPrimary:Z

    .line 709
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryActionIcon:I

    .line 711
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->ids:Ljava/util/ArrayList;

    .line 713
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->collapseCount:I

    .line 715
    iput v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    .line 716
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->chatCapability:I

    .line 718
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 721
    return-void
.end method

.method public static fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/content/ContentValues;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 6
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "values"
    .parameter "isDirectoryEntry"
    .parameter "directoryId"

    .prologue
    .line 728
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>()V

    .line 729
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    iput-object p0, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->context:Landroid/content/Context;

    .line 730
    iput-wide p3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 731
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 732
    if-eqz p6, :cond_0

    .line 733
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->uri:Landroid/net/Uri;

    .line 736
    :cond_0
    iput-object p1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    .line 737
    iget v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    if-nez v3, :cond_5

    :cond_1
    const-string v3, ""

    :goto_0
    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    .line 739
    invoke-static {p2, p5, p0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/model/AccountType$DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    .line 741
    iget-object v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 742
    iget-object v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    .line 745
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    .line 746
    iget-object v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 747
    .local v2, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    if-ne v3, v4, :cond_2

    .line 748
    iget-boolean v3, v2, Lcom/android/contacts/model/AccountType$EditType;->unspecifiedType:Z

    if-nez v3, :cond_3

    .line 749
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 751
    iget v3, v2, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    .line 764
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    :goto_1
    iget v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->iconRes:I

    if-lez v3, :cond_4

    .line 765
    iget-object v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->resPackageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->resPackageName:Ljava/lang/String;

    .line 766
    iget v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->iconRes:I

    iput v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    .line 769
    :cond_4
    return-object v0

    .line 737
    :cond_5
    iget v3, p2, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 754
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_6
    iget-object v3, v2, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {p5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1

    .line 761
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_7
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public applyStatus(Lcom/android/contacts/util/DataStatus;Z)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .parameter "status"
    .parameter "fillData"

    .prologue
    .line 780
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    .line 781
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p1}, Lcom/android/contacts/util/DataStatus;->getStatus()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    .line 783
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/util/DataStatus;->getTimestampLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    .line 786
    :cond_0
    return-object p0
.end method

.method public collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)Z
    .locals 4
    .parameter "entry"

    .prologue
    const/4 v3, 0x1

    .line 792
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 793
    const/4 v0, 0x0

    .line 821
    :goto_0
    return v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    invoke-static {v0, v1}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    iget v2, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    invoke-static {v1, v2}, Lcom/android/contacts/TypePrecedence;->getTypePrecedence(Ljava/lang/String;I)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 799
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->type:I

    .line 800
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    .line 801
    iget-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    .line 805
    :cond_1
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    iget v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    .line 808
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    invoke-static {v0}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v0

    iget v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    invoke-static {v1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresencePrecedence(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 810
    iget v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    .line 814
    :cond_2
    iget-boolean v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isPrimary:Z

    .line 819
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->ids:Ljava/util/ArrayList;

    iget-wide v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->collapseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->collapseCount:I

    move v0, v3

    .line 821
    goto :goto_0

    .line 814
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isPrimary:Z

    goto :goto_1
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 695
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->collapseWith(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)Z
    .locals 6
    .parameter "entry"

    .prologue
    const/4 v5, 0x0

    .line 826
    if-nez p1, :cond_0

    move v0, v5

    .line 842
    :goto_0
    return v0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v5

    .line 832
    goto :goto_0

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->mimetype:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    iget v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    if-eq v0, v1, :cond_3

    :cond_2
    move v0, v5

    .line 839
    goto :goto_0

    .line 842
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 695
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->shouldCollapseWith(Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;)Z

    move-result v0

    return v0
.end method
