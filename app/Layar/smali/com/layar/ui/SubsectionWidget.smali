.class public Lcom/layar/ui/SubsectionWidget;
.super Landroid/widget/RadioGroup;
.source "SubsectionWidget.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;,
        Lcom/layar/ui/SubsectionWidget$Subsection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInit:Z

.field private mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

.field private mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/layar/ui/SubsectionWidget;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/SubsectionWidget;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/SubsectionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    .line 73
    iput-boolean v1, p0, Lcom/layar/ui/SubsectionWidget;->mInit:Z

    .line 89
    invoke-virtual {p0, v1}, Lcom/layar/ui/SubsectionWidget;->setOrientation(I)V

    .line 90
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/layar/ui/SubsectionWidget;->setGravity(I)V

    .line 91
    new-instance v0, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/layar/ui/SubsectionWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/layar/ui/SubsectionWidget;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->removeAllViews()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/ui/SubsectionWidget;->mInit:Z

    .line 166
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->clearCheck()V

    .line 167
    return-void
.end method

.method public getCurrentSubsection()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, -0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v0}, Lcom/layar/ui/SubsectionWidget$Subsection;->getCurrentSubsection()I

    move-result v0

    goto :goto_0
.end method

.method public getListener()Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v1, -0x1

    .line 172
    iget-boolean v0, p0, Lcom/layar/ui/SubsectionWidget;->mInit:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->getCurrentSubsection()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 173
    if-eq p2, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;->onSubsectionChanged(Lcom/layar/ui/SubsectionWidget;I)V

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v0, p2}, Lcom/layar/ui/SubsectionWidget$Subsection;->setCurrentSubsection(I)V

    .line 179
    :cond_1
    return-void

    .line 176
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/ui/SubsectionWidget;->mInit:Z

    goto :goto_0
.end method

.method public setCurrentSubsection(I)V
    .locals 1
    .parameter "currentSubsection"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v0, p1}, Lcom/layar/ui/SubsectionWidget$Subsection;->setCurrentSubsection(I)V

    .line 154
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v0}, Lcom/layar/ui/SubsectionWidget$Subsection;->getCurrentSubsection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/layar/ui/SubsectionWidget;->check(I)V

    .line 155
    return-void
.end method

.method public setListener(Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/layar/ui/SubsectionWidget;->mListener:Lcom/layar/ui/SubsectionWidget$OnSubsectionChangeListener;

    .line 81
    return-void
.end method

.method public setSubSection(Lcom/layar/ui/SubsectionWidget$Subsection;)V
    .locals 12
    .parameter "subsection"

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->clear()V

    .line 97
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/layar/ui/SubsectionWidget$Subsection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 98
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/layar/ui/SubsectionWidget;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, v9}, Lcom/layar/ui/SubsectionWidget;->setVisibility(I)V

    .line 102
    const v8, 0x7f020114

    invoke-virtual {p0, v8}, Lcom/layar/ui/SubsectionWidget;->setBackgroundResource(I)V

    .line 103
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/layar/ui/SubsectionWidget;->setPadding(IIII)V

    .line 104
    iput-object p1, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    .line 105
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 106
    .local v2, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v8}, Lcom/layar/ui/SubsectionWidget$Subsection;->getSubsectionArray()[I

    move-result-object v0

    .line 107
    .local v0, array:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v8, v0

    if-lt v3, v8, :cond_2

    .line 137
    iput-boolean v11, p0, Lcom/layar/ui/SubsectionWidget;->mInit:Z

    .line 138
    iget-object v8, p0, Lcom/layar/ui/SubsectionWidget;->mSubsection:Lcom/layar/ui/SubsectionWidget$Subsection;

    invoke-virtual {v8}, Lcom/layar/ui/SubsectionWidget$Subsection;->getCurrentSubsection()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/layar/ui/SubsectionWidget;->check(I)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v1, Landroid/widget/RadioButton;

    invoke-direct {v1, v2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 109
    .local v1, button:Landroid/widget/RadioButton;
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    .line 110
    const/4 v8, -0x1

    .line 111
    const/4 v9, -0x2

    .line 112
    const/high16 v10, 0x3f80

    .line 109
    invoke-direct {v4, v8, v9, v10}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    .line 113
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 114
    invoke-virtual {v1}, Landroid/widget/RadioButton;->setSingleLine()V

    .line 115
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 116
    aget v8, v0, v3

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, text:Ljava/lang/String;
    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0b0015

    invoke-virtual {v1, v8, v9}, Landroid/widget/RadioButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 119
    aget v8, v0, v3

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setId(I)V

    .line 120
    const v8, 0x106000d

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 121
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 122
    .local v7, xpp:Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x0

    .line 124
    .local v5, states:Landroid/content/res/ColorStateList;
    :try_start_0
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 125
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_2
    invoke-virtual {p0, v1, v4}, Lcom/layar/ui/SubsectionWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    if-nez v3, :cond_3

    .line 131
    const v8, 0x7f020126

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 107
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 132
    :cond_3
    array-length v8, v0

    sub-int/2addr v8, v11

    if-ne v3, v8, :cond_4

    .line 133
    const v8, 0x7f020127

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 135
    :cond_4
    const v8, 0x7f020122

    invoke-virtual {v1, v8}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    goto :goto_3

    .line 127
    :catch_0
    move-exception v8

    goto :goto_2

    .line 126
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public setText(ILjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "text"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/layar/ui/SubsectionWidget;->getChildCount()I

    move-result v0

    .line 143
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 150
    :goto_1
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0, v1}, Lcom/layar/ui/SubsectionWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 145
    .local v2, v:Landroid/widget/RadioButton;
    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 146
    invoke-virtual {v2, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
