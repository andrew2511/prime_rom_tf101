.class public Lcom/nuance/xt9/input/LanguageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LanguageListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mLanguageView:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/xt9/input/InputMethods;)V
    .locals 0
    .parameter "context"
    .parameter "inputMethods"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nuance/xt9/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0, p2}, Lcom/nuance/xt9/input/LanguageListAdapter;->build(Lcom/nuance/xt9/input/InputMethods;)I

    .line 26
    return-void
.end method

.method private build(Lcom/nuance/xt9/input/InputMethods;)I
    .locals 19
    .parameter "inputMethods"

    .prologue
    .line 29
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/xt9/input/InputMethods$Language;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nuance/xt9/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/xt9/input/InputMethods$InputMode;

    move-result-object v7

    .line 32
    .local v7, currentInputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v5

    .line 33
    .local v5, chineseInputLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->getAlphabeticInputLanguages()Ljava/util/List;

    move-result-object v3

    .line 35
    .local v3, alphaInputLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$Language;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->isUDBSimplifyField()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->isUDBTraditionalField()Z

    move-result v15

    if-nez v15, :cond_3

    .line 36
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 37
    .local v2, alphaInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    invoke-virtual {v2}, Lcom/nuance/xt9/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v12

    .line 38
    .local v12, inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 39
    .local v11, inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual {v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x109000f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckedTextView;

    .line 42
    .local v8, cv:Landroid/widget/CheckedTextView;
    invoke-virtual {v8, v11}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 43
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 44
    const/high16 v15, -0x100

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 45
    iget-object v15, v2, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v15

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLanguageId()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    invoke-virtual {v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLocale()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getLocale()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    :goto_1
    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 57
    .end local v2           #alphaInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v8           #cv:Landroid/widget/CheckedTextView;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    .end local v12           #inputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/xt9/input/InputMethods$Language;

    .line 58
    .local v4, chineseInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 60
    .local v13, saveLastLocation:I
    invoke-virtual {v4}, Lcom/nuance/xt9/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v6

    .line 61
    .local v6, chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/xt9/input/InputMethods$InputMode;

    .line 62
    .restart local v11       #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->isUDBSimplifyField()Z

    move-result v15

    if-nez v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/xt9/input/InputMethods;->isUDBTraditionalField()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 63
    :cond_6
    iget v15, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mLanguageId:I

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/nuance/xt9/input/InputMethods;->isUDBChinese(I)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x109000f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckedTextView;

    .line 66
    .restart local v8       #cv:Landroid/widget/CheckedTextView;
    const/high16 v15, -0x100

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 67
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 68
    iget-object v15, v11, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v7, v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 70
    invoke-virtual {v8, v11}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    .end local v8           #cv:Landroid/widget/CheckedTextView;
    :cond_7
    invoke-virtual {v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x109000f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckedTextView;

    .line 77
    .restart local v8       #cv:Landroid/widget/CheckedTextView;
    const/high16 v15, -0x100

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 78
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 79
    iget-object v15, v11, Lcom/nuance/xt9/input/InputMethods$InputMode;->mDisplayInputMode:Ljava/lang/String;

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v7, v11}, Lcom/nuance/xt9/input/InputMethods$InputMode;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v8, v15}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 81
    invoke-virtual {v8, v11}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 88
    .end local v8           #cv:Landroid/widget/CheckedTextView;
    .end local v11           #inputMode:Lcom/nuance/xt9/input/InputMethods$InputMode;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    if-le v15, v13, :cond_4

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f030018

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 91
    .local v14, tv:Landroid/widget/TextView;
    iget-object v15, v4, Lcom/nuance/xt9/input/InputMethods$Language;->mDisplayLanguageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15, v13, v14}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 97
    .end local v4           #chineseInputLanguage:Lcom/nuance/xt9/input/InputMethods$Language;
    .end local v6           #chineseInputModes:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/xt9/input/InputMethods$InputMode;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v13           #saveLastLocation:I
    .end local v14           #tv:Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    return v15
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 117
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/xt9/input/LanguageListAdapter;->mLanguageView:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method
