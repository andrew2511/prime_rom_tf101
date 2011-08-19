.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1
    .parameter "out"
    .parameter "specialToken"

    .prologue
    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    .line 210
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 5
    .parameter "route"
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 184
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 185
    .local v1, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, localPart:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, domain:Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1
    .parameter "node"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
    .locals 6
    .parameter "node"

    .prologue
    .line 68
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 69
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 70
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v4, :cond_0

    .line 71
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    .line 84
    :goto_0
    return-object v4

    .line 73
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_1

    .line 74
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    goto :goto_0

    .line 76
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v4, :cond_4

    .line 77
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    .line 79
    .local v2, n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v4, :cond_2

    .line 80
    new-instance v4, Lorg/apache/james/mime4j/field/address/Group;

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    .end local v2           #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    goto :goto_0

    .line 82
    .restart local v2       #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v4, :cond_3

    .line 83
    invoke-static {v3}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v4, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v2           #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    goto :goto_0

    .line 87
    .restart local v2       #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 91
    .end local v2           #n2:Lorg/apache/james/mime4j/field/address/parser/Node;
    .end local v3           #name:Ljava/lang/String;
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 4
    .parameter "node"

    .prologue
    .line 149
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 150
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 151
    .local v2, route:Lorg/apache/james/mime4j/field/address/DomainList;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 152
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v3, :cond_1

    .line 153
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object v2

    .line 154
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 161
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v3, :cond_2

    .line 162
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 156
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-nez v3, :cond_0

    .line 159
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 164
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 5
    .parameter "node"

    .prologue
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 100
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 102
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v3, :cond_0

    .line 103
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 107
    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 3
    .parameter "node"

    .prologue
    .line 111
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 112
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 113
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v2, :cond_0

    .line 114
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    .line 120
    :goto_0
    return-object v2

    .line 116
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v2, :cond_1

    .line 117
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 119
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v2, :cond_2

    .line 120
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/NamedMailbox;

    move-result-object v2

    goto :goto_0

    .line 123
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/NamedMailbox;
    .locals 5
    .parameter "node"

    .prologue
    .line 128
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 129
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 131
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v3, :cond_0

    .line 132
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 139
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v3, :cond_1

    .line 140
    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v3, Lorg/apache/james/mime4j/field/address/NamedMailbox;

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/NamedMailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-object v3

    .line 135
    .end local v2           #name:Ljava/lang/String;
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 144
    .restart local v2       #name:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, 0x1

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 170
    .local v0, it:Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    .line 172
    .local v1, n:Lorg/apache/james/mime4j/field/address/parser/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    .line 173
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    invoke-direct {p0, v1, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .restart local v1       #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 177
    .end local v1           #n:Lorg/apache/james/mime4j/field/address/parser/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v3
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .parameter "node"
    .parameter "stripSpaces"

    .prologue
    .line 192
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 193
    .local v0, head:Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v2, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 194
    .local v2, tail:Lorg/apache/james/mime4j/field/address/parser/Token;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v1, out:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 197
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 199
    if-nez p2, :cond_0

    .line 200
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuffer;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 6
    .parameter "node"

    .prologue
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/james/mime4j/field/address/Address;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 60
    invoke-virtual {p1, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    .line 61
    .local v1, childNode:Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v0

    .line 62
    .local v0, address:Lorg/apache/james/mime4j/field/address/Address;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0           #address:Lorg/apache/james/mime4j/field/address/Address;
    .end local v1           #childNode:Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :cond_0
    new-instance v4, Lorg/apache/james/mime4j/field/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/ArrayList;Z)V

    return-object v4
.end method
