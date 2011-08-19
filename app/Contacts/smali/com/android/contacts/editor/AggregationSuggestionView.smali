.class public Lcom/android/contacts/editor/AggregationSuggestionView;
.super Landroid/widget/RelativeLayout;
.source "AggregationSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

.field private mLookupKey:Ljava/lang/String;

.field private mNewContact:Z

.field private mRawContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->setClickable(Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->setClickable(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionView;->setClickable(Z)V

    .line 77
    return-void
.end method

.method private canEditSuggestedContact()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 114
    iget-boolean v5, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    if-nez v5, :cond_0

    move v5, v6

    .line 130
    :goto_0
    return v5

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 119
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v5, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 120
    .local v3, rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-object v0, v3, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    .line 121
    .local v0, accountType:Ljava/lang/String;
    if-nez v0, :cond_2

    move v5, v7

    .line 122
    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 125
    .local v4, type:Lcom/android/contacts/model/AccountType;
    iget-boolean v5, v4, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-nez v5, :cond_1

    move v5, v7

    .line 126
    goto :goto_0

    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    .end local v4           #type:Lcom/android/contacts/model/AccountType;
    :cond_3
    move v5, v6

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V
    .locals 7
    .parameter "suggestion"

    .prologue
    .line 84
    iget-wide v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    iput-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    .line 85
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    .line 86
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    iput-object v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    .line 87
    const v4, 0x7f070021

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    .local v3, photo:Landroid/widget/ImageView;
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :goto_0
    const v4, 0x7f070022

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 96
    .local v2, name:Landroid/widget/TextView;
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v4, 0x7f070023

    invoke-virtual {p0, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, data:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 100
    .local v1, dataText:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 101
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    .line 107
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void

    .line 92
    .end local v0           #data:Landroid/widget/TextView;
    .end local v1           #dataText:Ljava/lang/String;
    .end local v2           #name:Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f02005b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    .restart local v0       #data:Landroid/widget/TextView;
    .restart local v1       #dataText:Ljava/lang/String;
    .restart local v2       #name:Landroid/widget/TextView;
    :cond_2
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 103
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_3
    iget-object v4, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 105
    iget-object v1, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto :goto_1
.end method

.method public performClick()Z
    .locals 7

    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-direct {p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->canEditSuggestedContact()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    iget-object v6, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mLookupKey:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onEditAction(Landroid/net/Uri;)V

    .line 149
    :goto_0
    const/4 v3, 0x1

    .line 151
    :goto_1
    return v3

    .line 143
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mRawContacts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    .line 145
    .local v1, rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    iget-wide v3, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    .end local v1           #rawContact:Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mContactId:J

    invoke-interface {v3, v4, v5, v2}, Lcom/android/contacts/editor/AggregationSuggestionView$Listener;->onJoinAction(JLjava/util/List;)V

    goto :goto_0

    .line 151
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mListener:Lcom/android/contacts/editor/AggregationSuggestionView$Listener;

    .line 135
    return-void
.end method

.method public setNewContact(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/contacts/editor/AggregationSuggestionView;->mNewContact:Z

    .line 81
    return-void
.end method
