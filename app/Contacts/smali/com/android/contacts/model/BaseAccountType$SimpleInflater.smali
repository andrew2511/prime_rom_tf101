.class public Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "stringRes"

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 411
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "stringRes"
    .parameter "columnName"

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput p1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 419
    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "columnName"

    .prologue
    .line 414
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 415
    return-void
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 442
    iget-object v4, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 443
    .local v2, validColumn:Z
    iget v4, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v4, :cond_0

    move v3, v7

    .line 445
    .local v3, validString:Z
    :goto_0
    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, v4

    .line 446
    .local v1, stringValue:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 448
    .local v0, columnValue:Ljava/lang/CharSequence;
    :goto_2
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 449
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 455
    :goto_3
    return-object v4

    .end local v0           #columnValue:Ljava/lang/CharSequence;
    .end local v1           #stringValue:Ljava/lang/CharSequence;
    .end local v3           #validString:Z
    :cond_0
    move v3, v6

    .line 443
    goto :goto_0

    .restart local v3       #validString:Z
    :cond_1
    move-object v1, v5

    .line 445
    goto :goto_1

    .restart local v1       #stringValue:Ljava/lang/CharSequence;
    :cond_2
    move-object v0, v5

    .line 446
    goto :goto_2

    .line 450
    .restart local v0       #columnValue:Ljava/lang/CharSequence;
    :cond_3
    if-eqz v3, :cond_4

    move-object v4, v1

    .line 451
    goto :goto_3

    .line 452
    :cond_4
    if-eqz v2, :cond_5

    move-object v4, v0

    .line 453
    goto :goto_3

    :cond_5
    move-object v4, v5

    .line 455
    goto :goto_3
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 423
    iget-object v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 424
    .local v1, index:I
    :goto_0
    iget v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v5, :cond_1

    move v4, v6

    .line 425
    .local v4, validString:Z
    :goto_1
    if-eq v1, v9, :cond_2

    move v3, v6

    .line 427
    .local v3, validColumn:Z
    :goto_2
    if-eqz v4, :cond_3

    iget v5, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v5

    .line 428
    .local v2, stringValue:Ljava/lang/CharSequence;
    :goto_3
    if-eqz v3, :cond_4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 430
    .local v0, columnValue:Ljava/lang/CharSequence;
    :goto_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 431
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 437
    :goto_5
    return-object v5

    .end local v0           #columnValue:Ljava/lang/CharSequence;
    .end local v1           #index:I
    .end local v2           #stringValue:Ljava/lang/CharSequence;
    .end local v3           #validColumn:Z
    .end local v4           #validString:Z
    :cond_0
    move v1, v9

    .line 423
    goto :goto_0

    .restart local v1       #index:I
    :cond_1
    move v4, v7

    .line 424
    goto :goto_1

    .restart local v4       #validString:Z
    :cond_2
    move v3, v7

    .line 425
    goto :goto_2

    .restart local v3       #validColumn:Z
    :cond_3
    move-object v2, v8

    .line 427
    goto :goto_3

    .restart local v2       #stringValue:Ljava/lang/CharSequence;
    :cond_4
    move-object v0, v8

    .line 428
    goto :goto_4

    .line 432
    .restart local v0       #columnValue:Ljava/lang/CharSequence;
    :cond_5
    if-eqz v4, :cond_6

    move-object v5, v2

    .line 433
    goto :goto_5

    .line 434
    :cond_6
    if-eqz v3, :cond_7

    move-object v5, v0

    .line 435
    goto :goto_5

    :cond_7
    move-object v5, v8

    .line 437
    goto :goto_5
.end method
