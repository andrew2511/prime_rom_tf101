.class Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
.super Lcom/android/emailcommon/mail/Folder;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Folder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    }
.end annotation


# instance fields
.field private mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

.field private mMessageCount:I

.field private final mMsgNumToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mUidToMsgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/Pop3Store$Pop3Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidToMsgNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    .line 202
    const-string v0, "INBOX"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "INBOX"

    iput-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-object p2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 920
    sget-object v1, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 922
    if-eqz p1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v1}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, response:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 929
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 932
    :cond_1
    return-object v0
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    .locals 12
    .parameter "message"
    .parameter "lines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 774
    const/4 v4, 0x0

    .line 775
    .local v4, response:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 776
    .local v3, messageId:I
    if-ne p2, v11, :cond_2

    .line 778
    const-string v5, "RETR %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 787
    :goto_0
    if-eqz v4, :cond_1

    .line 789
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 790
    .local v0, in:Ljava/io/InputStream;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$400()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 791
    new-instance v1, Lcom/android/emailcommon/utility/LoggingInputStream;

    invoke-direct {v1, v0}, Lcom/android/emailcommon/utility/LoggingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    move-object v0, v1

    .line 793
    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    :cond_0
    new-instance v5, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v5, v6, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V

    invoke-virtual {p1, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 807
    .end local v0           #in:Ljava/io/InputStream;
    :cond_1
    return-void

    .line 782
    :cond_2
    :try_start_1
    const-string v5, "TOP %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 783
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 784
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "RETR %d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 795
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 802
    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    if-ne p2, v11, :cond_1

    .line 803
    throw v2
.end method

.method private fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 21
    .parameter "messages"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 694
    const/4 v15, 0x0

    .line 695
    .local v15, unsizedMessages:I
    move-object/from16 v2, p1

    .local v2, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v8, v2, v5

    .line 696
    .local v8, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 697
    add-int/lit8 v15, v15, 0x1

    .line 695
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 700
    .end local v8           #message:Lcom/android/emailcommon/mail/Message;
    :cond_1
    if-nez v15, :cond_3

    .line 756
    :cond_2
    return-void

    .line 703
    :cond_3
    const/16 v16, 0x32

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    move/from16 v16, v0

    const/16 v17, 0x1388

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 708
    const/4 v4, 0x0

    .local v4, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    .local v3, count:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 709
    aget-object v8, p1, v4

    .line 710
    .restart local v8       #message:Lcom/android/emailcommon/mail/Message;
    move-object v0, v8

    instance-of v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    move/from16 v16, v0

    if-nez v16, :cond_4

    .line 711
    new-instance v16, Lcom/android/emailcommon/mail/MessagingException;

    const-string v17, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct/range {v16 .. v17}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 713
    :cond_4
    move-object v0, v8

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    move-object v13, v0

    .line 714
    .local v13, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const-string v16, "LIST %d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 717
    .local v14, response:Ljava/lang/String;
    :try_start_0
    const-string v16, " "

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, listParts:[Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 719
    .local v9, msgNum:I
    const/16 v16, 0x2

    aget-object v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 720
    .local v10, msgSize:I
    invoke-virtual {v13, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    if-eqz p2, :cond_5

    .line 725
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 708
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 721
    .end local v7           #listParts:[Ljava/lang/String;
    .end local v9           #msgNum:I
    .end local v10           #msgSize:I
    :catch_0
    move-exception v16

    move-object/from16 v12, v16

    .line 722
    .local v12, nfe:Ljava/lang/NumberFormatException;
    new-instance v16, Ljava/io/IOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/IOException;-><init>()V

    throw v16

    .line 729
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v8           #message:Lcom/android/emailcommon/mail/Message;
    .end local v12           #nfe:Ljava/lang/NumberFormatException;
    .end local v13           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v14           #response:Ljava/lang/String;
    :cond_6
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 730
    .local v11, msgUidIndex:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_7

    aget-object v8, v2, v5

    .line 731
    .restart local v8       #message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 733
    .end local v8           #message:Lcom/android/emailcommon/mail/Message;
    :cond_7
    const-string v16, "LIST"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 734
    .restart local v14       #response:Ljava/lang/String;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 735
    const-string v16, "."

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 738
    const/4 v13, 0x0

    .line 739
    .restart local v13       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    const/4 v10, 0x0

    .line 741
    .restart local v10       #msgSize:I
    :try_start_1
    const-string v16, " "

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 742
    .restart local v7       #listParts:[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 743
    .restart local v9       #msgNum:I
    const/16 v16, 0x1

    aget-object v16, v7, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    check-cast v13, Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 748
    .restart local v13       #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 749
    invoke-virtual {v13, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setSize(I)V

    .line 750
    if-eqz p2, :cond_8

    .line 751
    move-object/from16 v0, p2

    move-object v1, v13

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    goto :goto_3

    .line 745
    .end local v7           #listParts:[Ljava/lang/String;
    .end local v9           #msgNum:I
    .end local v13           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_1
    move-exception v16

    move-object/from16 v12, v16

    .line 746
    .restart local v12       #nfe:Ljava/lang/NumberFormatException;
    new-instance v16, Ljava/io/IOException;

    invoke-direct/range {v16 .. v16}, Ljava/io/IOException;-><init>()V

    throw v16
.end method

.method private getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 865
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;-><init>(Lcom/android/email/mail/store/Pop3Store;)V

    .line 867
    .local v0, capabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;
    :try_start_0
    const-string v2, "CAPA"

    invoke-direct {p0, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, response:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 869
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 895
    .end local v1           #response:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 872
    .restart local v1       #response:Ljava/lang/String;
    :cond_2
    const-string v2, "STLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 873
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    goto :goto_0

    .line 889
    .end local v1           #response:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 875
    .restart local v1       #response:Ljava/lang/String;
    :cond_3
    const-string v2, "UIDL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 876
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    goto :goto_0

    .line 878
    :cond_4
    const-string v2, "PIPELINING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 879
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->pipelining:Z

    goto :goto_0

    .line 881
    :cond_5
    const-string v2, "USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 882
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->user:Z

    goto :goto_0

    .line 884
    :cond_6
    const-string v2, "TOP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 885
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->top:Z
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V
    .locals 3
    .parameter "msgNum"
    .parameter "message"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    return-void
.end method

.method private indexMsgNums(II)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v4, 0x0

    .line 427
    .local v4, unindexedMessageCount:I
    move v1, p1

    .local v1, msgNum:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 428
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 429
    add-int/lit8 v4, v4, 0x1

    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    if-nez v4, :cond_3

    .line 472
    :cond_2
    return-void

    .line 435
    :cond_3
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 436
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$300()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x32

    if-ge v4, v5, :cond_7

    iget v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    const/16 v6, 0x1388

    if-le v5, v6, :cond_7

    .line 442
    :cond_4
    move v1, p1

    :goto_1
    if-gt v1, p2, :cond_2

    .line 443
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 444
    .local v0, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_6

    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIDL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, response:Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseSingleLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 447
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 449
    :cond_5
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 450
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    .line 442
    .end local v3           #response:Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 454
    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_7
    const-string v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .restart local v3       #response:Ljava/lang/String;
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 456
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 457
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 459
    :cond_9
    iget-boolean v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v5, :cond_2

    .line 462
    iget v1, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    .line 463
    if-lt v1, p1, :cond_8

    if-gt v1, p2, :cond_8

    .line 464
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 465
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v0, :cond_8

    .line 466
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v0           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v0, v5, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 467
    .restart local v0       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_2
.end method

.method private indexUids(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    .local p1, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 477
    .local v5, unindexedUids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 478
    .local v4, uid:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 479
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v4           #uid:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 505
    :cond_2
    return-void

    .line 490
    :cond_3
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 491
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v6, "UIDL"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, response:Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 493
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 494
    iget-boolean v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z

    if-nez v6, :cond_2

    .line 497
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 498
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 499
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-nez v1, :cond_5

    .line 500
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    iget-object v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mUniqueId:Ljava/lang/String;

    invoke-direct {v1, v6, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 502
    .restart local v1       #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :cond_5
    iget v6, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mMessageNumber:I

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMessage(ILcom/android/email/mail/store/Pop3Store$Pop3Message;)V

    goto :goto_1
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 816
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public checkSettings()Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v4, -0x1

    .line 220
    .local v4, result:I
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v5, v5, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->uidl:Z

    if-nez v5, :cond_1

    .line 222
    :try_start_0
    new-instance v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;

    invoke-direct {v2, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;-><init>(Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 223
    .local v2, parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    const-string v5, "UIDL"

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    :cond_0
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, response:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 227
    invoke-virtual {v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->parseMultiLine(Ljava/lang/String;)Z

    .line 228
    iget-boolean v5, v2, Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;->mEndOfMessage:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 239
    .end local v2           #parser:Lcom/android/email/mail/store/Pop3Store$Pop3Folder$UidlParser;
    .end local v3           #response:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v5, "validate_result_code"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    return-object v0

    .line 232
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 233
    .local v1, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->close()V

    .line 234
    const/4 v4, 0x1

    .line 235
    const-string v5, "validate_error_message"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public close(Z)V
    .locals 1
    .parameter "expunge"

    .prologue
    .line 333
    :try_start_0
    const-string v0, "QUIT"

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 339
    return-void

    .line 335
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .locals 2
    .parameter "msgs"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "copyMessages is not supported in POP3"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 0
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 820
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 937
    instance-of v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    if-eqz v0, :cond_0

    .line 938
    check-cast p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 940
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v1, "INBOX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .locals 12
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 633
    if-eqz p1, :cond_0

    array-length v10, p1

    if-nez v10, :cond_1

    .line 690
    :cond_0
    return-void

    .line 636
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v9, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v1, v4

    .line 638
    .local v7, message:Lcom/android/emailcommon/mail/Message;
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 641
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :cond_2
    :try_start_0
    invoke-direct {p0, v9}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexUids(Ljava/util/ArrayList;)V

    .line 642
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 645
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchEnvelope([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    array-length v2, p1

    .local v2, count:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 655
    aget-object v7, p1, v3

    .line 656
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    instance-of v10, v7, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    if-nez v10, :cond_5

    .line 657
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Pop3Store.fetch called with non-Pop3 Message"

    invoke-direct {v10, v11}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 647
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v7           #message:Lcom/android/emailcommon/mail/Message;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 648
    .local v5, ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v10}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/email/mail/Transport;->close()V

    .line 649
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 650
    const-string v10, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_4
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "fetch"

    invoke-direct {v10, v11, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 659
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v7       #message:Lcom/android/emailcommon/mail/Message;
    :cond_5
    move-object v0, v7

    check-cast v0, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    move-object v8, v0

    .line 661
    .local v8, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :try_start_1
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 662
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V

    .line 679
    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    .line 680
    invoke-interface {p3, v7}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 654
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 664
    :cond_8
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 669
    const/16 v10, 0x2a1

    invoke-direct {p0, v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->fetchBody(Lcom/android/email/mail/store/Pop3Store$Pop3Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 682
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 683
    .restart local v5       #ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v10}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/email/mail/Transport;->close()V

    .line 684
    sget-boolean v10, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 685
    const-string v10, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_9
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Unable to fetch message"

    invoke-direct {v10, v11, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 672
    .end local v5           #ioe:Ljava/io/IOException;
    :cond_a
    :try_start_2
    sget-object v10, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {p2, v10}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 677
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .locals 5
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 376
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 386
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    return-object v1

    .line 377
    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 378
    .local v0, ioe:Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v2}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->close()V

    .line 379
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 380
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to index during getMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "getMessages"

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 392
    if-lt p1, v9, :cond_0

    if-lt p2, v9, :cond_0

    if-ge p2, p1, :cond_1

    .line 393
    :cond_0
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "Invalid message set %d %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 397
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->indexMsgNums(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    move v3, p1

    .local v3, msgNum:I
    :goto_0
    if-gt v3, p2, :cond_4

    .line 407
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    .line 408
    .local v1, message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    if-eqz p3, :cond_2

    .line 410
    invoke-interface {p3, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 406
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 398
    .end local v1           #message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    .end local v2           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .end local v3           #msgNum:I
    :catch_0
    move-exception v0

    .line 399
    .local v0, ioe:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v4}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/email/mail/Transport;->close()V

    .line 400
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 401
    const-string v4, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_3
    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const-string v5, "getMessages"

    invoke-direct {v4, v5, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 413
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v2       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    .restart local v3       #msgNum:I
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/emailcommon/mail/Message;

    return-object p0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .locals 2
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 620
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Pop3Folder.getMessage(MessageRetrievalListener)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 320
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {}, Lcom/android/email/mail/store/Pop3Store;->access$500()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, -0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v0}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .locals 9
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 316
    :goto_0
    monitor-exit p0

    return-void

    .line 250
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mName:Ljava/lang/String;

    const-string v7, "INBOX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 251
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Folder does not exist"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 255
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->open()V

    .line 256
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    const v7, 0xea60

    invoke-interface {v6, v7}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 259
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getCapabilities()Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    .line 263
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mCapabilities:Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;

    iget-boolean v6, v6, Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;->stls:Z

    if-eqz v6, :cond_4

    .line 265
    const-string v6, "STLS"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->reopenTls()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    :cond_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USER "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$100(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "USER /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PASS "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v7}, Lcom/android/email/mail/store/Pop3Store;->access$200(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PASS /redacted/"

    invoke-direct {p0, v6, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 292
    const/4 v5, 0x0

    .line 294
    .local v5, statException:Ljava/lang/Exception;
    :try_start_4
    const-string v6, "STAT"

    invoke-direct {p0, v6}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, response:Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, parts:[Ljava/lang/String;
    array-length v6, v3

    if-ge v6, v8, :cond_8

    .line 297
    new-instance v5, Ljava/io/IOException;

    .end local v5           #statException:Ljava/lang/Exception;
    invoke-direct {v5}, Ljava/io/IOException;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 306
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :goto_1
    if-eqz v5, :cond_9

    .line 307
    :try_start_5
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 308
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 309
    const-string v6, "Email"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "POP3 STAT"

    invoke-direct {v6, v7, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    .end local v5           #statException:Ljava/lang/Exception;
    :cond_4
    :try_start_6
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 269
    const-string v6, "Email"

    const-string v7, "TLS not supported but required"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_5
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 284
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 285
    .local v0, ioe:Ljava/io/IOException;
    :try_start_7
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v6}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->close()V

    .line 286
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 287
    const-string v6, "Email"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_6
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v7, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 278
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 279
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_8
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 280
    const-string v6, "Email"

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_7
    new-instance v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 299
    .end local v1           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v3       #parts:[Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    .restart local v5       #statException:Ljava/lang/Exception;
    :cond_8
    const/4 v6, 0x1

    :try_start_9
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMessageCount:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 301
    .end local v3           #parts:[Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v0, v6

    .line 302
    .restart local v0       #ioe:Ljava/io/IOException;
    move-object v5, v0

    .line 305
    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_1

    .line 303
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v5           #statException:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 304
    .local v2, nfe:Ljava/lang/NumberFormatException;
    move-object v5, v2

    .restart local v5       #statException:Ljava/lang/Exception;
    goto :goto_1

    .line 313
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_9
    :try_start_a
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 314
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mMsgNumToMsgMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 315
    iget-object v6, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .locals 10
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 830
    if-eqz p3, :cond_0

    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    invoke-static {p2, v5}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 849
    :cond_0
    return-void

    .line 837
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/mail/Message;
    :try_start_0
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 838
    .local v4, message:Lcom/android/emailcommon/mail/Message;
    const-string v5, "DELE %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->mUidToMsgNumMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 842
    .end local v1           #i$:I
    .end local v3           #len$:I
    .end local v4           #message:Lcom/android/emailcommon/mail/Message;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 843
    .local v2, ioe:Ljava/io/IOException;
    iget-object v5, p0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->this$0:Lcom/android/email/mail/store/Pop3Store;

    invoke-static {v5}, Lcom/android/email/mail/store/Pop3Store;->access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->close()V

    .line 844
    sget-boolean v5, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 845
    const-string v5, "Email"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_2
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "setFlags()"

    invoke-direct {v5, v6, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
