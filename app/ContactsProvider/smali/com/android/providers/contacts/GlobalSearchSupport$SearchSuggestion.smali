.class Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/GlobalSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchSuggestion"
.end annotation


# instance fields
.field contactId:J

.field filter:Ljava/lang/String;

.field icon1:Ljava/lang/String;

.field icon2:Ljava/lang/String;

.field lookupKey:Ljava/lang/String;

.field photoUri:Ljava/lang/String;

.field presence:I

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>()V

    return-void
.end method

.method private addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string v0, "suggest_text_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "suggest_text_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "suggest_icon_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_3
    const-string v0, "suggest_icon_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_4
    const-string v0, "suggest_intent_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->buildUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_5
    const-string v0, "suggest_intent_data_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_6
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 156
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    :cond_7
    const-string v0, "suggest_intent_extra_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "projection"

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 118
    :goto_0
    iget v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 119
    iget v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    invoke-static {v2}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    .line 122
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p1, :cond_3

    .line 124
    iget-wide v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->buildUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    return-object v1

    .line 115
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    const v2, 0x10802b5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto :goto_0

    .line 133
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 134
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
