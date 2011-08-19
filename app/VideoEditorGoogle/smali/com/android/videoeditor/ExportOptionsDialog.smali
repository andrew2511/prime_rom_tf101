.class public Lcom/android/videoeditor/ExportOptionsDialog;
.super Ljava/lang/Object;
.source "ExportOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/android/videoeditor/ExportOptionsDialog;->indexToMovieHeight(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/videoeditor/ExportOptionsDialog;->indexToMovieBitrate(I)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Lcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;I)Landroid/app/Dialog;
    .locals 7
    .parameter "context"
    .parameter "positiveListener"
    .parameter "negativeListener"
    .parameter "cancelListener"
    .parameter "aspectRatio"

    .prologue
    const/4 v6, 0x1

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x108009b

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 63
    const v4, 0x7f090008

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 66
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 68
    .local v3, vi:Landroid/view/LayoutInflater;
    const v4, 0x7f040009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, myView:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-static {v2, p4}, Lcom/android/videoeditor/ExportOptionsDialog;->prepareContent(Landroid/view/View;I)V

    .line 75
    const v4, 0x7f09004d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/videoeditor/ExportOptionsDialog$1;

    invoke-direct {v5, v2, p4, p1}, Lcom/android/videoeditor/ExportOptionsDialog$1;-><init>(Landroid/view/View;ILcom/android/videoeditor/ExportOptionsDialog$ExportOptionsListener;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 100
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 101
    return-object v1
.end method

.method private static indexToMovieBitrate(I)I
    .locals 1
    .parameter "qualityIndex"

    .prologue
    const v0, 0x1e8480

    .line 161
    packed-switch p0, :pswitch_data_0

    .line 175
    :goto_0
    :pswitch_0
    return v0

    .line 163
    :pswitch_1
    const v0, 0x7d000

    goto :goto_0

    .line 171
    :pswitch_2
    const v0, 0x7a1200

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static indexToMovieHeight(II)I
    .locals 2
    .parameter "sizeIndex"
    .parameter "aspectRatio"

    .prologue
    .line 148
    invoke-static {p1}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v0

    .line 150
    .local v0, supportedSizes:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    aget-object v1, v0, p0

    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static prepareContent(Landroid/view/View;I)V
    .locals 11
    .parameter "view"
    .parameter "aspectRatio"

    .prologue
    const v10, 0x1090009

    const v9, 0x1090008

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, context:Landroid/content/Context;
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-direct {v4, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 115
    .local v4, sizeAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 116
    invoke-static {p1}, Landroid/media/videoeditor/MediaProperties;->getSupportedResolutions(I)[Landroid/util/Pair;

    move-result-object v6

    .line 118
    .local v6, supportedSizes:[Landroid/util/Pair;,"[Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v6, v1

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    const v7, 0x7f080012

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 122
    .local v5, sizeSpinner:Landroid/widget/Spinner;
    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    const v7, 0x7f09004e

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 126
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 128
    .local v2, qualityAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 129
    const v7, 0x7f090050

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 130
    const v7, 0x7f090051

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 131
    const v7, 0x7f090052

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 132
    const v7, 0x7f080013

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 133
    .local v3, qualitySpinner:Landroid/widget/Spinner;
    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 135
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 136
    const v7, 0x7f09004f

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setPromptId(I)V

    .line 137
    return-void
.end method
