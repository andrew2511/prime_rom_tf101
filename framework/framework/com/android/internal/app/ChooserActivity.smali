.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 28
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .line 29
    .local v11, targetParcelable:Landroid/os/Parcelable;
    instance-of v1, v11, Landroid/content/Intent;

    if-nez v1, :cond_2a

    .line 30
    const-string v1, "ChooseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target is not an intent: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    .line 54
    :goto_29
    return-void

    .line 34
    :cond_2a
    move-object v0, v11

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 35
    .local v3, target:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 36
    .local v4, title:Ljava/lang/CharSequence;
    if-nez v4, :cond_41

    .line 37
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 39
    :cond_41
    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    .line 40
    .local v10, pa:[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 41
    .local v5, initialIntents:[Landroid/content/Intent;
    if-eqz v10, :cond_88

    .line 42
    array-length v1, v10

    new-array v5, v1, [Landroid/content/Intent;

    .line 43
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4e
    array-length v1, v10

    if-ge v8, v1, :cond_88

    .line 44
    aget-object v1, v10, v8

    instance-of v1, v1, Landroid/content/Intent;

    if-nez v1, :cond_7f

    .line 45
    const-string v1, "ChooseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial intent #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " not an Intent: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v10, v8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    goto :goto_29

    .line 50
    :cond_7f
    aget-object v1, v10, v8

    check-cast v1, Landroid/content/Intent;

    aput-object v1, v5, v8

    .line 43
    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 53
    .end local v8           #i:I
    :cond_88
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    goto :goto_29
.end method
