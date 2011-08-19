.class public Lcom/google/android/gm/widget/WidgetConversationViewBuilder;
.super Ljava/lang/Object;
.source "WidgetConversationViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;
    }
.end annotation


# static fields
.field private static ATTACHMENT:Landroid/graphics/Bitmap;

.field private static DATE_FONT_SIZE:I

.field private static DEFAULT_TEXT_COLOR:I

.field private static LIGHT_TEXT_COLOR:I

.field private static SENDERS_FONT_SIZE:I

.field private static SUBJECT_FONT_SIZE:I


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mAccount:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    invoke-direct {v1}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    .line 106
    iget-object v1, p0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_FONT_SIZE:I

    .line 110
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_FONT_SIZE:I

    .line 111
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_FONT_SIZE:I

    .line 114
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DEFAULT_TEXT_COLOR:I

    .line 115
    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->LIGHT_TEXT_COLOR:I

    .line 118
    const v1, 0x7f02002e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 119
    return-void
.end method

.method private addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "size"
    .parameter "color"

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 125
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 128
    if-eqz p3, :cond_0

    .line 129
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 132
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getStyledView(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Map;Z)Landroid/widget/RemoteViews;
    .locals 16
    .parameter "senders"
    .parameter "date"
    .parameter "subject"
    .parameter "snippet"
    .parameter
    .parameter "hasAttachments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 142
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mAccount:Ljava/lang/String;

    move-object v14, v0

    const-string v15, "^i"

    move-object v0, v12

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, p5

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->loadConversationLabels(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/CharSequence;)V

    .line 144
    const-string v12, "^u"

    move-object/from16 v0, p5

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 147
    .local v5, isUnread:Z
    sget v12, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SENDERS_FONT_SIZE:I

    sget v13, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DEFAULT_TEXT_COLOR:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 150
    .local v9, styledSenders:Ljava/lang/CharSequence;
    sget v12, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DATE_FONT_SIZE:I

    sget v13, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DEFAULT_TEXT_COLOR:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 153
    .local v8, styledDate:Ljava/lang/CharSequence;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f0d0153

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p3, v14, v15

    const/4 v15, 0x1

    aput-object p4, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v11, subjectAndSnippet:Landroid/text/SpannableStringBuilder;
    if-eqz v5, :cond_1

    new-instance v12, Landroid/text/style/StyleSpan;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_0
    const/4 v13, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 158
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    sget v13, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->DEFAULT_TEXT_COLOR:I

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v13, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 160
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    sget v13, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->LIGHT_TEXT_COLOR:I

    invoke-direct {v12, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 162
    sget v12, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->SUBJECT_FONT_SIZE:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->addStyle(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 165
    .local v10, styledSubject:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 166
    .local v6, paperclipBitmap:Landroid/graphics/Bitmap;
    if-eqz p6, :cond_0

    .line 167
    sget-object v6, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->ATTACHMENT:Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    new-instance v7, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f040034

    invoke-direct {v7, v12, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 173
    .local v7, remoteViews:Landroid/widget/RemoteViews;
    const v12, 0x7f0e009b

    invoke-virtual {v7, v12, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 174
    const v12, 0x7f0e009a

    invoke-virtual {v7, v12, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 175
    const v12, 0x7f0e009c

    invoke-virtual {v7, v12, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 176
    if-eqz v6, :cond_2

    .line 177
    const v12, 0x7f0e0099

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    const v12, 0x7f0e0099

    invoke-virtual {v7, v12, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 182
    :goto_1
    if-eqz v5, :cond_3

    .line 183
    const v12, 0x7f0e0093

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    const v12, 0x7f0e0094

    const/16 v13, 0x8

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/widget/WidgetConversationViewBuilder;->mLabelDisplayer:Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;

    move-object v12, v0

    invoke-virtual {v12, v7}, Lcom/google/android/gm/widget/WidgetConversationViewBuilder$WidgetLabelDisplayer;->displayLabels(Landroid/widget/RemoteViews;)V

    .line 191
    return-object v7

    .line 155
    .end local v6           #paperclipBitmap:Landroid/graphics/Bitmap;
    .end local v7           #remoteViews:Landroid/widget/RemoteViews;
    .end local v10           #styledSubject:Ljava/lang/CharSequence;
    :cond_1
    new-instance v12, Landroid/text/style/StyleSpan;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto/16 :goto_0

    .line 180
    .restart local v6       #paperclipBitmap:Landroid/graphics/Bitmap;
    .restart local v7       #remoteViews:Landroid/widget/RemoteViews;
    .restart local v10       #styledSubject:Ljava/lang/CharSequence;
    :cond_2
    const v12, 0x7f0e0099

    const/16 v13, 0x8

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 186
    :cond_3
    const v12, 0x7f0e0093

    const/16 v13, 0x8

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 187
    const v12, 0x7f0e0094

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method
