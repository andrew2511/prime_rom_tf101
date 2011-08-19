.class public Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
.super Ljava/lang/Object;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

.field private mIcon1:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mIntentAction:Ljava/lang/String;

.field private mIntentComponent:Landroid/content/ComponentName;

.field private mIntentData:Ljava/lang/String;

.field private mIntentExtraData:Ljava/lang/String;

.field private mIsHistory:Z

.field private mIsShortcut:Z

.field private mLogType:Ljava/lang/String;

.field private mShortcutId:Ljava/lang/String;

.field private mSource:Lcom/google/android/googlequicksearchbox/Source;

.field private mSpinnerWhileRefreshing:Z

.field private mSuggestionQuery:Ljava/lang/String;

.field private mText1:Ljava/lang/CharSequence;

.field private mText2:Ljava/lang/CharSequence;

.field private mText2Url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 19

    .prologue
    .line 405
    new-instance v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText1:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2Url:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon1:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon2:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mShortcutId:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSpinnerWhileRefreshing:Z

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentAction:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentData:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentExtraData:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentComponent:Landroid/content/ComponentName;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSuggestionQuery:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLogType:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsShortcut:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsHistory:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-object/from16 v18, v0

    invoke-direct/range {v1 .. v18}, Lcom/google/android/googlequicksearchbox/Suggestion;-><init>(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZLcom/google/android/googlequicksearchbox/SuggestionExtras;)V

    return-object v1
.end method

.method public extras(Lcom/google/android/googlequicksearchbox/SuggestionExtras;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "extras"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    .line 378
    return-object p0
.end method

.method public fromSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 1
    .parameter "orig"

    .prologue
    .line 383
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 384
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText1:Ljava/lang/CharSequence;

    .line 385
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2:Ljava/lang/CharSequence;

    .line 386
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionText2Url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2Url:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon1:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIcon2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon2:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mShortcutId:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSpinnerWhileRefreshing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSpinnerWhileRefreshing:Z

    .line 391
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentAction:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentData:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentExtraData:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionIntentComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentComponent:Landroid/content/ComponentName;

    .line 395
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSuggestionQuery:Ljava/lang/String;

    .line 396
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionLogType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLogType:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsShortcut:Z

    .line 398
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsHistory:Z

    .line 399
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getExtras()Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mExtras:Lcom/google/android/googlequicksearchbox/SuggestionExtras;

    .line 401
    return-object p0
.end method

.method public icon1(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "icon1"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon1:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public icon2(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "icon2"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIcon2:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentAction"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentAction:Ljava/lang/String;

    .line 346
    return-object p0
.end method

.method public intentComponent(Landroid/content/ComponentName;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentComponent"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentComponent:Landroid/content/ComponentName;

    .line 358
    return-object p0
.end method

.method public intentData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentData"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentData:Ljava/lang/String;

    .line 350
    return-object p0
.end method

.method public intentExtraData(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "intentExtraData"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIntentExtraData:Ljava/lang/String;

    .line 354
    return-object p0
.end method

.method public isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "history"

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsHistory:Z

    .line 374
    return-object p0
.end method

.method public isShortcut(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "shortcut"

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mIsShortcut:Z

    .line 370
    return-object p0
.end method

.method public logType(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "logType"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mLogType:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public shortcutId(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "shortcutId"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mShortcutId:Ljava/lang/String;

    .line 338
    return-object p0
.end method

.method public source(Lcom/google/android/googlequicksearchbox/Source;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "source"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 314
    return-object p0
.end method

.method public spinnerWhileRefreshing(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "spinnerWhileRefreshing"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSpinnerWhileRefreshing:Z

    .line 342
    return-object p0
.end method

.method public suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "suggestionQuery"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mSuggestionQuery:Ljava/lang/String;

    .line 362
    return-object p0
.end method

.method public text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "text1"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText1:Ljava/lang/CharSequence;

    .line 318
    return-object p0
.end method

.method public text2(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "text2"

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2:Ljava/lang/CharSequence;

    .line 322
    return-object p0
.end method

.method public text2Url(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;
    .locals 0
    .parameter "text2Url"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->mText2Url:Ljava/lang/String;

    .line 326
    return-object p0
.end method
