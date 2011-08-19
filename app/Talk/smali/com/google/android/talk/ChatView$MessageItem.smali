.class Lcom/google/android/talk/ChatView$MessageItem;
.super Landroid/widget/RelativeLayout;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageItem"
.end annotation


# instance fields
.field private mAvatar:Landroid/widget/ImageView;

.field private mBarColorNormal:I

.field private mBarColorTop:I

.field private mBody:Ljava/lang/String;

.field public mBold:Landroid/text/style/StyleSpan;

.field public mDateFormat:Ljava/text/DateFormat;

.field public mDateFormatStr:Ljava/lang/String;

.field public mHorizontalBar:Landroid/view/View;

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mMeString:Ljava/lang/CharSequence;

.field public mMessageView:Landroid/widget/TextView;

.field public mSB:Landroid/text/SpannableStringBuilder;

.field public mSentAt:Landroid/widget/TextView;

.field private mSpan:Landroid/text/style/LineHeightSpan;

.field public mStringBuilder:Ljava/lang/StringBuilder;

.field private mViewType:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;Landroid/app/Activity;I)V
    .locals 6
    .parameter
    .parameter "activity"
    .parameter "viewType"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 939
    iput-object p1, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    .line 940
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 917
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBold:Landroid/text/style/StyleSpan;

    .line 918
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    .line 928
    new-instance v1, Lcom/google/android/talk/ChatView$MessageItem$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$MessageItem$1;-><init>(Lcom/google/android/talk/ChatView$MessageItem;)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSpan:Landroid/text/style/LineHeightSpan;

    .line 941
    invoke-virtual {p1, v3}, Lcom/google/android/talk/ChatView;->setOrientation(I)V

    .line 942
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    .line 944
    .local v0, r:Landroid/content/res/Resources;
    packed-switch p3, :pswitch_data_0

    .line 971
    :goto_0
    const v1, 0x7f100009

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Landroid/widget/ImageView;

    .line 972
    const v1, 0x7f100043

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mHorizontalBar:Landroid/view/View;

    .line 973
    const v1, 0x7f100044

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    .line 974
    const v1, 0x7f100046

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    .line 975
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMeString:Ljava/lang/CharSequence;

    .line 976
    iput p3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mViewType:I

    .line 978
    const v1, 0x7f020025

    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->setBackgroundResource(I)V

    .line 979
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormat:Ljava/text/DateFormat;

    .line 980
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormatStr:Ljava/lang/String;

    .line 982
    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorTop:I

    .line 983
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorNormal:I

    .line 985
    new-instance v1, Lcom/google/android/talk/util/Markup;

    invoke-direct {v1, p2, v5, v5}, Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 987
    invoke-static {}, Lcom/google/android/talk/ChatView;->access$3800()I

    move-result v1

    if-nez v1, :cond_0

    .line 988
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$3802(I)I

    .line 991
    :cond_0
    return-void

    .line 946
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$3700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040013

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 947
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0012

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b0013

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 954
    :pswitch_1
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$3700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040015

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 955
    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0016

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b0017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 962
    :pswitch_2
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$3700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040014

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 963
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b001b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->setPadding(IIII)V

    goto/16 :goto_0

    .line 944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private colorForNickname(Ljava/lang/String;Z)I
    .locals 7
    .parameter "contact"
    .parameter "isGroupChat"

    .prologue
    .line 1131
    const/high16 v4, -0x100

    .line 1132
    .local v4, retval:I
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 1133
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    if-nez v5, :cond_0

    .line 1135
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v6, 0x3

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Lcom/google/android/talk/ChatView;->access$4802(Lcom/google/android/talk/ChatView;[I)[I

    .line 1139
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1140
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1169
    :cond_1
    :goto_0
    return v4

    .line 1147
    .restart local p0
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v6

    array-length v6, v6

    rem-int v3, v5, v6

    .line 1148
    .local v3, pos:I
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    array-length v1, v5

    .line 1149
    .local v1, count:I
    const/high16 v0, -0x100

    .local v0, color:I
    move v2, v1

    .line 1155
    .end local v1           #count:I
    .local v2, count:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    if-lez v2, :cond_3

    .line 1156
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    array-length v5, v5

    rem-int/2addr v3, v5

    .line 1157
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    aget v0, v5, v3

    .line 1158
    if-eqz v0, :cond_4

    .line 1159
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4800(Lcom/google/android/talk/ChatView;)[I

    move-result-object v5

    const/4 v6, 0x0

    aput v6, v5, v3

    .line 1165
    :cond_3
    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4900(Lcom/google/android/talk/ChatView;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    move v4, v0

    goto :goto_0

    .line 1162
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 1135
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
    .end array-data
.end method

.method private convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;
    .locals 3
    .parameter "text"
    .parameter "markup"

    .prologue
    .line 1411
    if-eqz p2, :cond_0

    .line 1412
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMarkup:Lcom/google/android/talk/util/Markup;

    invoke-virtual {v2, p1}, Lcom/google/android/talk/util/Markup;->markup(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 1421
    .local v1, spanText:Landroid/text/SpannableString;
    :goto_0
    return-object v1

    .line 1414
    .end local v1           #spanText:Landroid/text/SpannableString;
    :cond_0
    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_1

    .line 1415
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableString;

    move-object v1, v0

    .restart local v1       #spanText:Landroid/text/SpannableString;
    goto :goto_0

    .line 1417
    .end local v1           #spanText:Landroid/text/SpannableString;
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1       #spanText:Landroid/text/SpannableString;
    goto :goto_0
.end method

.method private inflatePictureView(I)Landroid/view/View;
    .locals 19
    .parameter "pos"

    .prologue
    .line 1433
    new-instance v13, Ljava/lang/Integer;

    move-object v0, v13

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1434
    .local v13, tag:Ljava/lang/Integer;
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    .line 1435
    .local v10, pictureView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "inflatePictureView looking for tag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " this: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1436
    if-eqz v10, :cond_0

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "inflatePictureView found view with tag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " getTag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " pictureView: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1439
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v11, v10

    .line 1503
    .end local v10           #pictureView:Landroid/view/View;
    .local v11, pictureView:Landroid/view/View;
    :goto_0
    return-object v11

    .line 1447
    .end local v11           #pictureView:Landroid/view/View;
    .restart local v10       #pictureView:Landroid/view/View;
    :cond_0
    move-object/from16 v12, p0

    .line 1448
    .local v12, relativeLayoutRoot:Landroid/view/ViewGroup;
    const-string v16, "wrapperView"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1449
    .local v15, wrapperView:Landroid/widget/LinearLayout;
    if-nez v15, :cond_1

    .line 1450
    new-instance v15, Landroid/widget/LinearLayout;

    .end local v15           #wrapperView:Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView$MessageItem;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1451
    .restart local v15       #wrapperView:Landroid/widget/LinearLayout;
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1452
    const-string v16, "wrapperView"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 1453
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v16, -0x2

    const/16 v17, -0x2

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1456
    .local v9, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v12, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1462
    .local v14, wrapperLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v16, 0x3

    const v17, 0x7f100044

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mViewType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1480
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #wrapperLayout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/android/talk/ChatView;->access$3700(Lcom/google/android/talk/ChatView;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f04001f

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object v2, v15

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1483
    .local v8, newPictureView:Landroid/view/View;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1484
    .local v5, childCount:I
    const/4 v6, 0x0

    .line 1485
    .local v6, found:Z
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v5, :cond_2

    .line 1486
    invoke-virtual {v15, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1487
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v16

    const v17, 0x7f100069

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1488
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_3

    .line 1489
    const/4 v6, 0x1

    .line 1490
    move-object v10, v4

    .line 1491
    invoke-virtual {v10, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1497
    .end local v4           #child:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "inflatePictureView had to inflate view. found: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " CREATED tag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " getTag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " pictureView: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " parent: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " dump: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1501
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v11, v10

    .line 1503
    .end local v10           #pictureView:Landroid/view/View;
    .restart local v11       #pictureView:Landroid/view/View;
    goto/16 :goto_0

    .line 1465
    .end local v5           #childCount:I
    .end local v6           #found:Z
    .end local v7           #i:I
    .end local v8           #newPictureView:Landroid/view/View;
    .end local v11           #pictureView:Landroid/view/View;
    .restart local v9       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v10       #pictureView:Landroid/view/View;
    .restart local v14       #wrapperLayout:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    const/16 v16, 0x1

    const v17, 0x7f100009

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 1468
    :pswitch_1
    const/16 v16, 0x0

    const v17, 0x7f100045

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1469
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView$MessageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0014

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    move/from16 v0, v16

    move-object v1, v14

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 1473
    :pswitch_2
    const/16 v16, 0x0

    const v17, 0x7f100045

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/talk/ChatView$MessageItem;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0018

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v16

    move/from16 v0, v16

    move-object v1, v14

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 1485
    .end local v9           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v14           #wrapperLayout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #childCount:I
    .restart local v6       #found:Z
    .restart local v7       #i:I
    .restart local v8       #newPictureView:Landroid/view/View;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private removeAllPictureViews()V
    .locals 4

    .prologue
    .line 1512
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1513
    .local v1, tag:Ljava/lang/Integer;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .local v0, pictureView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1514
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f100069

    if-ne v2, v3, :cond_0

    .line 1515
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 1519
    :cond_1
    return-void
.end method

.method private setPicture(Lcom/google/android/talk/PictureCache$PictureData;Landroid/widget/ImageView;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 1548
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPicture pictureData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1552
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1553
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1555
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1556
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1558
    const v1, 0x7f10006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1559
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1564
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 1565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 1566
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1567
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1568
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1570
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1571
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1572
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1576
    if-eqz v2, :cond_0

    .line 1577
    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1580
    :cond_0
    if-eqz v2, :cond_1

    .line 1581
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1584
    :cond_1
    const v1, 0x7f10006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1585
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    invoke-virtual {p1}, Lcom/google/android/talk/PictureCache$PictureData;->getType()I

    move-result v1

    .line 1590
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1591
    const v1, 0x7f020043

    .line 1597
    :goto_1
    const v2, 0x7f10006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 1598
    if-eqz v1, :cond_5

    .line 1599
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1603
    :goto_2
    return-void

    :cond_2
    move v2, v7

    .line 1565
    goto :goto_0

    .line 1592
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1593
    const v1, 0x7f0200c0

    goto :goto_1

    .line 1594
    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 1595
    const v1, 0x7f0200e2

    goto :goto_1

    .line 1601
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_1
.end method

.method private showPictures(Ljava/lang/CharSequence;)V
    .locals 12
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1522
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$MessageItem;->getMessageLinks()[Landroid/text/style/URLSpan;

    move-result-object v8

    .line 1524
    .local v8, links:[Landroid/text/style/URLSpan;
    array-length v7, v8

    .line 1525
    .local v7, len:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 1526
    aget-object v11, v8, v6

    .line 1527
    .local v11, urlSpan:Landroid/text/style/URLSpan;
    invoke-virtual {v11}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, pictureUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/PictureCache;->allowScraping(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$5100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/PictureCache;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$5000(Lcom/google/android/talk/ChatView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/talk/PictureCache;->getPictureDataIfInCache(Ljava/lang/String;IILandroid/os/Handler;Lcom/google/android/talk/PictureCache$PictureData;)Lcom/google/android/talk/PictureCache$PictureData;

    move-result-object v9

    .line 1537
    .local v9, pictureData:Lcom/google/android/talk/PictureCache$PictureData;
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPictures pictureData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1539
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/google/android/talk/PictureCache$PictureData;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1540
    invoke-direct {p0, v6}, Lcom/google/android/talk/ChatView$MessageItem;->inflatePictureView(I)Landroid/view/View;

    move-result-object v10

    .line 1541
    .local v10, pictureView:Landroid/view/View;
    const v0, 0x7f10006b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v9, v0}, Lcom/google/android/talk/ChatView$MessageItem;->setPicture(Lcom/google/android/talk/PictureCache$PictureData;Landroid/widget/ImageView;)V

    .line 1525
    .end local v9           #pictureData:Lcom/google/android/talk/PictureCache$PictureData;
    .end local v10           #pictureView:Landroid/view/View;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1545
    .end local v1           #pictureUrl:Ljava/lang/String;
    .end local v11           #urlSpan:Landroid/text/style/URLSpan;
    :cond_1
    return-void
.end method


# virtual methods
.method appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V
    .locals 3
    .parameter "text"
    .parameter "timeStamp"
    .parameter "linkify"

    .prologue
    .line 1396
    if-eqz p4, :cond_0

    .line 1397
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1400
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/talk/ChatView$MessageItem;->convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;

    move-result-object v0

    .line 1401
    .local v0, spanText:Landroid/text/SpannableString;
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1403
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 1404
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView$MessageItem;->setTimeStamp(J)V

    .line 1406
    :cond_1
    return-void
.end method

.method public appendGroupChatConversionMessage(J)V
    .locals 7
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 1234
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1236
    .local v0, body:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1237
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1238
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1240
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1242
    .local v1, len:I
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1245
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1246
    return-void
.end method

.method appendInboxMessage(Ljava/lang/String;Ljava/lang/String;JZLandroid/database/Cursor;)V
    .locals 11
    .parameter "nickname"
    .parameter "text"
    .parameter "date"
    .parameter "showTimeStamp"
    .parameter "c"

    .prologue
    .line 1174
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1175
    .local v9, buf:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1176
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1179
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1180
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1182
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->isGroupChat()Z

    move-result v10

    .line 1183
    .local v10, isGroupChat:Z
    const/4 v5, 0x0

    .line 1184
    .local v5, nick:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1187
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1, v10}, Lcom/google/android/talk/ChatView$MessageItem;->colorForNickname(Ljava/lang/String;Z)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v2, p3

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZ)V

    .line 1190
    return-void
.end method

.method appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZ)V
    .locals 5
    .parameter "text"
    .parameter "timeStamp"
    .parameter "showTimeStamp"
    .parameter "contact"
    .parameter "textColor"
    .parameter "linkify"
    .parameter "markup"

    .prologue
    const/4 v4, 0x0

    .line 1376
    if-eqz p7, :cond_0

    .line 1377
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1380
    :cond_0
    if-eqz p5, :cond_1

    .line 1381
    invoke-virtual {p1, v4, p5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1382
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x7f7f80

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1383
    .local v0, mTextColor:Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1386
    .end local v0           #mTextColor:Landroid/text/style/ForegroundColorSpan;
    :cond_1
    if-eqz p4, :cond_2

    .line 1387
    invoke-virtual {p0, p2, p3}, Lcom/google/android/talk/ChatView$MessageItem;->setTimeStamp(J)V

    .line 1389
    :cond_2
    invoke-direct {p0, p1, p8}, Lcom/google/android/talk/ChatView$MessageItem;->convertToSpannableString(Ljava/lang/CharSequence;Z)Landroid/text/SpannableString;

    move-result-object v1

    .line 1391
    .local v1, spanText:Landroid/text/SpannableString;
    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1392
    invoke-direct {p0, p1}, Lcom/google/android/talk/ChatView$MessageItem;->showPictures(Ljava/lang/CharSequence;)V

    .line 1393
    return-void
.end method

.method public appendOffTheRecordStatus(Ljava/lang/String;)V
    .locals 7
    .parameter "body"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 1331
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1332
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1333
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1337
    .local v0, len:I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1340
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1343
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1347
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1348
    return-void
.end method

.method public appendPresenceUpdates(Ljava/lang/String;IJ)V
    .locals 10
    .parameter "nickname"
    .parameter "type"
    .parameter "date"

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 1251
    packed-switch p2, :pswitch_data_0

    .line 1265
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3900(Lcom/google/android/talk/ChatView;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x7f0c0052

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1269
    .local v0, body:Ljava/lang/CharSequence;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    .local v3, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 1272
    .local v1, formatter:Ljava/util/Formatter;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1276
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1277
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1278
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1280
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1282
    .local v2, len:I
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1285
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1288
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f4ccccd

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v4, v5, v8, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1292
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v4, p3, p4, v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1293
    return-void

    .line 1253
    .end local v0           #body:Ljava/lang/CharSequence;
    .end local v1           #formatter:Ljava/util/Formatter;
    .end local v2           #len:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3900(Lcom/google/android/talk/ChatView;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0c0051

    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1254
    .restart local v0       #body:Ljava/lang/CharSequence;
    goto :goto_1

    .line 1253
    .end local v0           #body:Ljava/lang/CharSequence;
    :cond_0
    const v5, 0x7f0c0053

    goto :goto_2

    .line 1257
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1258
    .restart local v0       #body:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1261
    .end local v0           #body:Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v4, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1262
    .restart local v0       #body:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1265
    .end local v0           #body:Ljava/lang/CharSequence;
    :cond_1
    const v5, 0x7f0c0056

    goto/16 :goto_0

    .line 1251
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method appendSentMessage(Ljava/lang/String;JZI)V
    .locals 13
    .parameter "text"
    .parameter "date"
    .parameter "showTimeStamp"
    .parameter "errorCode"

    .prologue
    .line 1193
    iget-object v9, p0, Lcom/google/android/talk/ChatView$MessageItem;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1194
    .local v9, buf:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1195
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 1196
    .local v12, namePortionLength:I
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    const/4 v10, 0x0

    .line 1201
    .local v10, errorOffset:I
    if-lez p5, :cond_0

    .line 1202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 1203
    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1208
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1209
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1211
    if-lez p5, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 1214
    .local v11, length:I
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v2}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1217
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1221
    if-lez v10, :cond_1

    .line 1222
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f4ccccd

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1228
    .end local v11           #length:I
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const/4 v5, 0x0

    const/high16 v6, -0x100

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/talk/ChatView$MessageItem;->appendMessage(Landroid/text/SpannableStringBuilder;JZLjava/lang/String;IZZ)V

    .line 1230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    .line 1231
    return-void
.end method

.method public appendStatusMessage(Ljava/lang/String;J)V
    .locals 7
    .parameter "status"
    .parameter "date"

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 1296
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1297
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1298
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1302
    .local v0, len:I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1305
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1308
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v2, v5, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1312
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1313
    return-void
.end method

.method public appendUserStatusMessage(Ljava/lang/String;JZ)V
    .locals 5
    .parameter "statusMessage"
    .parameter "date"
    .parameter "showTimeStamp"

    .prologue
    .line 1318
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1319
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1320
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1324
    .local v0, len:I
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1327
    iget-object v1, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSB:Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_0

    move-wide v2, p2

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->appendAnnotation(Landroid/text/SpannableStringBuilder;JZ)V

    .line 1328
    return-void

    .line 1327
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public bind(Landroid/database/Cursor;)V
    .locals 23
    .parameter "c"

    .prologue
    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$2000(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 999
    .local v8, date:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$2100(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1001
    .local v22, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mHorizontalBar:Landroid/view/View;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1002
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    if-nez v5, :cond_4

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mHorizontalBar:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorTop:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1008
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    move-object v5, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$1900(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/ChatView$MessageItem;->mBody:Ljava/lang/String;

    .line 1014
    .local v7, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3900(Lcom/google/android/talk/ChatView;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$1800(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1016
    .local v21, nickname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1021
    .local v6, displayNickname:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$2200(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1022
    .local v17, alwaysDisplayTs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1023
    .local v18, delta:J
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-eq v0, v1, :cond_1

    const-wide/32 v11, 0xea60

    cmp-long v5, v18, v11

    if-lez v5, :cond_6

    :cond_1
    const/4 v5, 0x1

    move v10, v5

    .line 1028
    .local v10, showTimeStamp:Z
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v5, v11, :cond_2

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delta = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", showTs="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/google/android/talk/ChatView;->access$4100(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 1030
    if-nez v10, :cond_7

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    const-wide/32 v11, 0xea60

    invoke-static {v5, v11, v12}, Lcom/google/android/talk/ChatView;->access$4200(Lcom/google/android/talk/ChatView;J)V

    .line 1040
    :cond_2
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/ChatView$MessageItem;->removeAllPictureViews()V

    .line 1042
    const v5, 0x7f020025

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->setBackgroundResource(I)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Landroid/widget/ImageView;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Landroid/widget/ImageView;

    move-object v5, v0

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1047
    :cond_3
    packed-switch v22, :pswitch_data_0

    .line 1115
    :pswitch_0
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    .line 1116
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v22

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->appendPresenceUpdates(Ljava/lang/String;IJ)V

    .line 1119
    .end local v6           #displayNickname:Ljava/lang/String;
    .end local v7           #body:Ljava/lang/String;
    .end local v8           #date:J
    .end local v10           #showTimeStamp:Z
    :goto_4
    return-void

    .line 1005
    .end local v17           #alwaysDisplayTs:I
    .end local v18           #delta:J
    .end local v21           #nickname:Ljava/lang/String;
    .restart local v8       #date:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mHorizontalBar:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mBarColorNormal:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 1018
    .restart local v7       #body:Ljava/lang/String;
    :cond_5
    const/16 v21, 0x0

    .line 1019
    .restart local v21       #nickname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/talk/ChatView;->getNickname()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #displayNickname:Ljava/lang/String;
    goto/16 :goto_1

    .line 1023
    .restart local v17       #alwaysDisplayTs:I
    .restart local v18       #delta:J
    :cond_6
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_2

    .line 1033
    .restart local v10       #showTimeStamp:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$4300(Lcom/google/android/talk/ChatView;)V

    goto :goto_3

    :pswitch_1
    move-object/from16 v5, p0

    move-object/from16 v11, p1

    .line 1049
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/talk/ChatView$MessageItem;->appendInboxMessage(Ljava/lang/String;Ljava/lang/String;JZLandroid/database/Cursor;)V

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3900(Lcom/google/android/talk/ChatView;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$4400(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1053
    .local v20, emailAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v6, v0

    .end local v6           #displayNickname:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4500(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$AvatarCache;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$AvatarCache;->getAvatar(Ljava/lang/String;Lcom/google/android/talk/ChatView$MessageItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/talk/ChatView;->access$1602(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 1059
    .end local v20           #emailAddress:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$1600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$1600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1055
    .restart local v6       #displayNickname:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$1600(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 1062
    .end local v6           #displayNickname:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4600(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/TalkApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1067
    .restart local v6       #displayNickname:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$2300(Lcom/google/android/talk/ChatView;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .local v16, errorCode:I
    move-object/from16 v11, p0

    move-object v12, v7

    move-wide v13, v8

    move v15, v10

    .line 1068
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/talk/ChatView$MessageItem;->appendSentMessage(Ljava/lang/String;JZI)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->mAvatar:Landroid/widget/ImageView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v6, v0

    .end local v6           #displayNickname:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/talk/ChatView;->access$4700(Lcom/google/android/talk/ChatView;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1074
    .end local v16           #errorCode:I
    .restart local v6       #displayNickname:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/ChatView$MessageItem;->appendGroupChatConversionMessage(J)V

    .line 1075
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1078
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c005f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v6           #displayNickname:Ljava/lang/String;
    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    .line 1079
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1082
    .restart local v6       #displayNickname:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v6           #displayNickname:Ljava/lang/String;
    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    .line 1083
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1086
    .restart local v6       #displayNickname:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0061

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v6           #displayNickname:Ljava/lang/String;
    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    .line 1088
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1091
    .restart local v6       #displayNickname:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0c0062

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .end local v7           #body:Ljava/lang/String;
    .end local v8           #date:J
    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->appendOffTheRecordStatus(Ljava/lang/String;)V

    .line 1093
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1096
    .restart local v7       #body:Ljava/lang/String;
    .restart local v8       #date:J
    :pswitch_8
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/talk/ChatView$MessageItem;->appendStatusMessage(Ljava/lang/String;J)V

    .line 1097
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1100
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0058

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .end local v6           #displayNickname:Ljava/lang/String;
    .end local v10           #showTimeStamp:Z
    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v5, v6, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v8

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    .line 1102
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1105
    .restart local v6       #displayNickname:Ljava/lang/String;
    .restart local v10       #showTimeStamp:Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0057

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .end local v6           #displayNickname:Ljava/lang/String;
    .end local v10           #showTimeStamp:Z
    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v5, v6, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v8

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    .line 1107
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1111
    .restart local v6       #displayNickname:Ljava/lang/String;
    .restart local v10       #showTimeStamp:Z
    :pswitch_b
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/talk/ChatView$MessageItem;->appendUserStatusMessage(Ljava/lang/String;JZ)V

    .line 1112
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$MessageItem;->updateBackgroundColor(I)V

    goto/16 :goto_4

    .line 1047
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method final getMessageLinks()[Landroid/text/style/URLSpan;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/android/talk/ChatView$MessageItem;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method setTimeStamp(J)V
    .locals 11
    .parameter "timeStamp"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1351
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1352
    .local v0, date:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1354
    .local v3, now:Ljava/util/Date;
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1355
    .local v6, timeStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mDateFormatStr:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1357
    .local v1, dateStr:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v8

    if-ne v7, v8, :cond_0

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v8

    if-ne v7, v8, :cond_0

    move v4, v10

    .line 1362
    .local v4, sameDay:Z
    :goto_0
    if-eqz v4, :cond_1

    const v7, 0x7f0c005d

    move v2, v7

    .line 1365
    .local v2, format:I
    :goto_1
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v7}, Lcom/google/android/talk/ChatView;->access$3600(Lcom/google/android/talk/ChatView;)Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v9

    aput-object v1, v8, v10

    invoke-virtual {v7, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1366
    .local v5, timeStampStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/talk/ChatView$MessageItem;->mSentAt:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    return-void

    .end local v2           #format:I
    .end local v4           #sameDay:Z
    .end local v5           #timeStampStr:Ljava/lang/String;
    :cond_0
    move v4, v9

    .line 1357
    goto :goto_0

    .line 1362
    .restart local v4       #sameDay:Z
    :cond_1
    const v7, 0x7f0c005b

    move v2, v7

    goto :goto_1
.end method

.method public final updateBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$MessageItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 1123
    .local v0, g:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1124
    return-void
.end method
