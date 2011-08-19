.class public Lcom/layar/reflect/EmailChooser;
.super Ljava/lang/Object;
.source "EmailChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/reflect/EmailChooser$ContactInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/layar/reflect/EmailChooser;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/reflect/EmailChooser;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContacts(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/layar/util/MyConfig;->SDK5Plus:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1}, Lcom/layar/reflect/EmailChooser;->getContactsSdk5(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/layar/reflect/EmailChooser;->getContactsSdk3_4(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private static getContactsSdk3_4(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, needcheck:Z
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 131
    const/4 v0, 0x1

    move v7, v0

    .line 134
    .end local v0           #needcheck:Z
    .local v7, needcheck:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 136
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 138
    const-string v5, "display_name"

    .line 137
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .end local p0
    .local v6, cursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-nez p0, :cond_1

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 172
    if-eqz v7, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local p1           #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_7

    .line 178
    :cond_0
    return-object v8

    .line 140
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local p1       #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string p0, "_id"

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    .local p0, contactId:Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "person = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #contactId:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 141
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 143
    .local v3, emails:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 144
    .local v1, name:Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    move-object v4, v1

    .line 145
    .end local v1           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 147
    :cond_3
    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 146
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, emailOwner:Ljava/lang/String;
    const-string v1, "data"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, emailAddress:Ljava/lang/String;
    if-eqz p0, :cond_4

    iget-object v5, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 152
    iget-object v5, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz p0, :cond_6

    .line 156
    iget-object v2, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    .end local v2           #emailOwner:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    .line 163
    .end local v4           #name:Ljava/lang/String;
    .local v2, name:Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 164
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->isChecked:Z

    .line 165
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v2

    .end local v2           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_3

    .line 158
    .local v2, emailOwner:Ljava/lang/String;
    :cond_6
    new-instance p0, Lcom/layar/reflect/EmailChooser$ContactInfo;

    .end local p0           #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    invoke-direct {p0, v2, v1}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local p0       #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    move-object v2, v2

    .line 160
    .end local v4           #name:Ljava/lang/String;
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 173
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #emailAddress:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #emails:Landroid/database/Cursor;
    .end local p0           #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    .end local p1           #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 174
    .local p0, userEmail:Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v1, Lcom/layar/reflect/EmailChooser$ContactInfo;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #needcheck:Z
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    .local v0, needcheck:Z
    .local p0, context:Landroid/content/Context;
    .restart local p1       #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move v7, v0

    .end local v0           #needcheck:Z
    .restart local v7       #needcheck:Z
    goto/16 :goto_0
.end method

.method public static getContactsSdk5(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/reflect/EmailChooser$ContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/reflect/EmailChooser$ContactInfo;>;"
    const/4 v0, 0x0

    .line 54
    .local v0, needcheck:Z
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 55
    const/4 v0, 0x1

    move v7, v0

    .line 61
    .end local v0           #needcheck:Z
    .local v7, needcheck:Z
    :goto_0
    :try_start_0
    const-string v0, "android.provider.ContactsContract$Contacts"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, contacts:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "DISPLAY_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 68
    .local v5, CONTACTS_DISPLAY_NAME:Ljava/lang/String;
    const-string v0, "android.provider.ContactsContract$CommonDataKinds$Email"

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, email:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v1, "DATA"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 70
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 71
    .local v6, EMAIL_DATA:Ljava/lang/String;
    const-string v1, "CONTENT_ITEM_TYPE"

    .end local v1           #field:Ljava/lang/reflect/Field;
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 72
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 77
    .local v4, EMAIL_CONTENT_ITEM_TYPE:Ljava/lang/String;
    const-string v0, "android.provider.ContactsContract$Data"

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 78
    .local v2, phone:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v0, "CONTENT_URI"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 79
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 80
    .local v1, DATA_CONTENT_URI:Landroid/net/Uri;
    const-string v0, "MIMETYPE"

    .end local v0           #field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2           #phone:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, DATA_MIMETYPE:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 85
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 p0, 0x2

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    aput-object v5, v2, p0

    const/4 p0, 0x1

    aput-object v6, v2, p0

    .line 86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #DATA_MIMETYPE:Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "=\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    const/4 v4, 0x0

    .line 84
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v4           #EMAIL_CONTENT_ITEM_TYPE:Ljava/lang/String;
    move-result-object v0

    .line 88
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 89
    .local v2, emailIndex:I
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, nameIndex:I
    const/4 v1, 0x0

    .line 92
    .local v1, name:Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    move-object v4, v1

    .line 93
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #EMAIL_DATA:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    if-eqz v7, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0           #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    if-lez p0, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #emailIndex:I
    .end local p1           #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_5

    .line 120
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameIndex:I
    :cond_1
    :goto_3
    return-object v8

    .line 94
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #emailIndex:I
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #nameIndex:I
    .restart local p0       #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    .restart local p1       #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, emailOwner:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, emailAddress:Ljava/lang/String;
    if-eqz p0, :cond_3

    iget-object v6, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 98
    iget-object v6, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 101
    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 102
    iget-object v3, p0, Lcom/layar/reflect/EmailChooser$ContactInfo;->emails:Ljava/util/ArrayList;

    .end local v3           #emailOwner:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 116
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #emailAddress:Ljava/lang/String;
    .end local v2           #emailIndex:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameIndex:I
    .end local p0           #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    .end local p1           #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception p0

    goto :goto_3

    .line 104
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #emailAddress:Ljava/lang/String;
    .restart local v2       #emailIndex:I
    .restart local v3       #emailOwner:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #nameIndex:I
    .restart local p0       #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    .restart local p1       #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    new-instance p0, Lcom/layar/reflect/EmailChooser$ContactInfo;

    .end local p0           #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    invoke-direct {p0, v3, v1}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .restart local p0       #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    move-object v1, v3

    .line 106
    .end local v4           #name:Ljava/lang/String;
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v1

    .end local v1           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 112
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #emailIndex:I
    .end local v3           #emailOwner:Ljava/lang/String;
    .end local p0           #contactInfo:Lcom/layar/reflect/EmailChooser$ContactInfo;
    .end local p1           #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 113
    .local p0, userEmail:Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v1, Lcom/layar/reflect/EmailChooser$ContactInfo;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/layar/reflect/EmailChooser$ContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #nameIndex:I
    .end local v7           #needcheck:Z
    .local v0, needcheck:Z
    .local p0, context:Landroid/content/Context;
    .restart local p1       #retrievedEmailsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move v7, v0

    .end local v0           #needcheck:Z
    .restart local v7       #needcheck:Z
    goto/16 :goto_0
.end method
