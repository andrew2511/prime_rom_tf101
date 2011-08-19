.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# instance fields
.field private mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 995
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getEntry(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method private getEntry(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 5
    .parameter "position"

    .prologue
    .line 1034
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1035
    .local v1, numSections:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1036
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1037
    .local v2, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1038
    .local v3, sectionSize:I
    if-ge p1, v3, :cond_0

    .line 1039
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-object v4, p0

    .line 1043
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;>;"
    .end local v3           #sectionSize:I
    :goto_1
    return-object v4

    .line 1041
    .restart local v2       #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;>;"
    .restart local v3       #sectionSize:I
    .restart local p0
    :cond_0
    sub-int/2addr p1, v3

    .line 1035
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v2           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;>;"
    .end local v3           #sectionSize:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textView"
    .parameter "maxLines"

    .prologue
    const/4 v0, 0x1

    .line 985
    if-ne p2, v0, :cond_0

    .line 986
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 987
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 993
    :goto_0
    return-void

    .line 989
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 990
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 991
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;ZZ)V
    .locals 12
    .parameter "view"
    .parameter "entry"
    .parameter "isFirstOfItsKind"
    .parameter "isLast"

    .prologue
    .line 906
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 907
    .local v4, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;

    .line 909
    .local v7, views:Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->kind:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    iget-object v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->kindDivider:Landroid/view/View;

    if-eqz p3, :cond_3

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->inKindDivider:Landroid/view/View;

    if-eqz p3, :cond_4

    const/16 v9, 0x8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->lineBelowLast:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 913
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->lineBelowLast:Landroid/view/View;

    if-eqz p4, :cond_5

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 916
    :cond_0
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->type:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->type:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x8

    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 920
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->data:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->data:Landroid/widget/TextView;

    iget v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->maxLines:I

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 924
    iget-object v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 925
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->footer:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->footerLine:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->footer:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 932
    :goto_5
    iget-object v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->actionIcon:Landroid/widget/ImageView;

    .line 933
    .local v0, action:Landroid/widget/ImageView;
    iget v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    .line 935
    iget-object v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->resPackageName:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 937
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->resPackageName:Ljava/lang/String;

    iget v10, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 942
    .local v1, actionIcon:Landroid/graphics/drawable/Drawable;
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 943
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    .end local v1           #actionIcon:Landroid/graphics/drawable/Drawable;
    :goto_7
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    iget v9, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->presence:I

    invoke-static {v8, v9}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 952
    .local v2, presenceIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 953
    .local v3, presenceIconView:Landroid/widget/ImageView;
    if-eqz v2, :cond_a

    .line 954
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 955
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    :goto_8
    iget-object v6, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 962
    .local v6, secondaryActionView:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 963
    .local v5, secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    iget v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryActionIcon:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    .line 964
    iget v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryActionIcon:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 973
    :cond_1
    :goto_9
    iget-object v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v8, :cond_d

    if-eqz v5, :cond_d

    .line 974
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 975
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 976
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 977
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->secondaryActionDivider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 982
    :goto_a
    return-void

    .line 909
    .end local v0           #action:Landroid/widget/ImageView;
    .end local v2           #presenceIcon:Landroid/graphics/drawable/Drawable;
    .end local v3           #presenceIconView:Landroid/widget/ImageView;
    .end local v5           #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .end local v6           #secondaryActionView:Landroid/widget/ImageView;
    :cond_2
    const-string v9, ""

    goto/16 :goto_0

    .line 910
    :cond_3
    const/16 v9, 0x8

    goto/16 :goto_1

    .line 911
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 913
    :cond_5
    const/16 v9, 0x8

    goto/16 :goto_3

    .line 917
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 928
    :cond_7
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->footer:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 940
    .restart local v0       #action:Landroid/widget/ImageView;
    :cond_8
    iget v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->actionIcon:I

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #actionIcon:Landroid/graphics/drawable/Drawable;
    goto :goto_6

    .line 946
    .end local v1           #actionIcon:Landroid/graphics/drawable/Drawable;
    :cond_9
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 957
    .restart local v2       #presenceIcon:Landroid/graphics/drawable/Drawable;
    .restart local v3       #presenceIconView:Landroid/widget/ImageView;
    :cond_a
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 965
    .restart local v5       #secondaryActionIcon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #secondaryActionView:Landroid/widget/ImageView;
    :cond_b
    iget v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->chatCapability:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_c

    .line 966
    const v8, 0x7f0200a9

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9

    .line 968
    :cond_c
    iget v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->chatCapability:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 969
    const v8, 0x7f0200a3

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9

    .line 979
    :cond_d
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 980
    iget-object v8, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->secondaryActionDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, count:I
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1012
    .local v2, numSections:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1013
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1014
    .local v3, section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 1012
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v3           #section:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;>;"
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getEntry(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getEntry(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 1027
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1028
    iget-wide v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 1030
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 864
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getEntry(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 869
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz p2, :cond_0

    .line 870
    move-object v4, p2

    .line 871
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;

    .line 894
    .local v5, viewCache:Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;
    :goto_0
    if-nez p1, :cond_1

    move-object v3, v10

    .line 895
    .local v3, previousEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    :goto_1
    if-nez v3, :cond_2

    move v1, v8

    .line 897
    .local v1, isFirstOfItsKind:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v8

    if-ne p1, v6, :cond_4

    move v2, v8

    .line 900
    .local v2, isLast:Z
    :goto_3
    invoke-virtual {p0, v4, v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindView(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;ZZ)V

    .line 901
    return-object v4

    .line 874
    .end local v1           #isFirstOfItsKind:Z
    .end local v2           #isLast:Z
    .end local v3           #previousEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .end local v4           #v:Landroid/view/View;
    .end local v5           #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v6}, Lcom/android/contacts/detail/ContactDetailFragment;->access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04000b

    invoke-virtual {v6, v7, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 877
    .restart local v4       #v:Landroid/view/View;
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;

    invoke-direct {v5, v10}, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    .line 878
    .restart local v5       #viewCache:Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;
    const v6, 0x7f070040

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->kind:Landroid/widget/TextView;

    .line 879
    const v6, 0x7f07003f

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->kindDivider:Landroid/view/View;

    .line 880
    const v6, 0x7f070047

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->lineBelowLast:Landroid/view/View;

    .line 881
    const v6, 0x7f070041

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->inKindDivider:Landroid/view/View;

    .line 882
    const v6, 0x7f070024

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->type:Landroid/widget/TextView;

    .line 883
    const v6, 0x7f070002

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->data:Landroid/widget/TextView;

    .line 884
    const v6, 0x7f070042

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->footer:Landroid/widget/TextView;

    .line 885
    const v6, 0x7f070044

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->actionIcon:Landroid/widget/ImageView;

    .line 886
    const v6, 0x7f070043

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 887
    const v6, 0x7f070046

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 889
    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    const v6, 0x7f070045

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$ViewCache;->secondaryActionDivider:Landroid/view/View;

    .line 891
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 894
    :cond_1
    sub-int v6, p1, v8

    invoke-direct {p0, v6}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getEntry(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v6

    move-object v3, v6

    goto/16 :goto_1

    .line 895
    .restart local v3       #previousEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    :cond_2
    iget-object v6, v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v8

    goto/16 :goto_2

    :cond_3
    move v1, v9

    goto/16 :goto_2

    .restart local v1       #isFirstOfItsKind:Z
    :cond_4
    move v2, v9

    .line 897
    goto/16 :goto_3
.end method
