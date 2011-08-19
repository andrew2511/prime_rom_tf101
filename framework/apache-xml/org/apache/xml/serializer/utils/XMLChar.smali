.class public Lorg/apache/xml/serializer/utils/XMLChar;
.super Ljava/lang/Object;
.source "XMLChar.java"


# static fields
.field private static final CHARS:[B = null

.field public static final MASK_CONTENT:I = 0x20

.field public static final MASK_NAME:I = 0x8

.field public static final MASK_NAME_START:I = 0x4

.field public static final MASK_NCNAME:I = 0x80

.field public static final MASK_NCNAME_START:I = 0x40

.field public static final MASK_PUBID:I = 0x10

.field public static final MASK_SPACE:I = 0x2

.field public static final MASK_VALID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, -0x3

    const/16 v7, 0x31

    const/16 v6, -0x57

    const/16 v5, -0x13

    const/16 v4, 0x21

    .line 56
    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    .line 98
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    .line 99
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 100
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    .line 101
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 102
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aput-byte v7, v0, v4

    .line 103
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x22

    aput-byte v4, v0, v1

    .line 104
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x23

    const/16 v2, 0x26

    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 105
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x26

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 106
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x27

    const/16 v2, 0x2d

    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 107
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2d

    const/16 v2, 0x2f

    const/16 v3, -0x47

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 108
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2f

    aput-byte v7, v0, v1

    .line 109
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30

    const/16 v2, 0x3a

    const/16 v3, -0x47

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    .line 110
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3a

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    .line 111
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3b

    aput-byte v7, v0, v1

    .line 112
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3c

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 113
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3d

    aput-byte v7, v0, v1

    .line 114
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e

    aput-byte v4, v0, v1

    .line 115
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3f

    const/16 v2, 0x41

    invoke-static {v0, v1, v2, v7}, Ljava/util/Arrays;->fill([BIIB)V

    .line 116
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x41

    const/16 v2, 0x5b

    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    .line 117
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5b

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 118
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5d

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 119
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5e

    aput-byte v4, v0, v1

    .line 120
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5f

    aput-byte v8, v0, v1

    .line 121
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x60

    aput-byte v4, v0, v1

    .line 122
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x61

    const/16 v2, 0x7b

    invoke-static {v0, v1, v2, v8}, Ljava/util/Arrays;->fill([BIIB)V

    .line 123
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x7b

    const/16 v2, 0xb7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 124
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb7

    aput-byte v6, v0, v1

    .line 125
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb8

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 126
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc0

    const/16 v2, 0xd7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 127
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd7

    aput-byte v4, v0, v1

    .line 128
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd8

    const/16 v2, 0xf7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 129
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf7

    aput-byte v4, v0, v1

    .line 130
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf8

    const/16 v2, 0x132

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 131
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x132

    const/16 v2, 0x134

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 132
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x134

    const/16 v2, 0x13f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 133
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x13f

    const/16 v2, 0x141

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 134
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x141

    const/16 v2, 0x149

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 135
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x149

    aput-byte v4, v0, v1

    .line 136
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x14a

    const/16 v2, 0x17f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 137
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x17f

    aput-byte v4, v0, v1

    .line 138
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x180

    const/16 v2, 0x1c4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 139
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1c4

    const/16 v2, 0x1cd

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 140
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1cd

    const/16 v2, 0x1f1

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 141
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f1

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 142
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f4

    const/16 v2, 0x1f6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 143
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f6

    const/16 v2, 0x1fa

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 144
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fa

    const/16 v2, 0x218

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 145
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x218

    const/16 v2, 0x250

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 146
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x250

    const/16 v2, 0x2a9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 147
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2a9

    const/16 v2, 0x2bb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 148
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2bb

    const/16 v2, 0x2c2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 149
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2c2

    const/16 v2, 0x2d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 150
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2d0

    const/16 v2, 0x2d2

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 151
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2d2

    const/16 v2, 0x300

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 152
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x300

    const/16 v2, 0x346

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 153
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x346

    const/16 v2, 0x360

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 154
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x360

    const/16 v2, 0x362

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 155
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x362

    const/16 v2, 0x386

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 156
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x386

    aput-byte v5, v0, v1

    .line 157
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x387

    aput-byte v6, v0, v1

    .line 158
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x388

    const/16 v2, 0x38b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 159
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38b

    aput-byte v4, v0, v1

    .line 160
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38c

    aput-byte v5, v0, v1

    .line 161
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38d

    aput-byte v4, v0, v1

    .line 162
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x38e

    const/16 v2, 0x3a2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 163
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3a2

    aput-byte v4, v0, v1

    .line 164
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3a3

    const/16 v2, 0x3cf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 165
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3cf

    aput-byte v4, v0, v1

    .line 166
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3d0

    const/16 v2, 0x3d7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 167
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3d7

    const/16 v2, 0x3da

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 168
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3da

    aput-byte v5, v0, v1

    .line 169
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3db

    aput-byte v4, v0, v1

    .line 170
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3dc

    aput-byte v5, v0, v1

    .line 171
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3dd

    aput-byte v4, v0, v1

    .line 172
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3de

    aput-byte v5, v0, v1

    .line 173
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3df

    aput-byte v4, v0, v1

    .line 174
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e0

    aput-byte v5, v0, v1

    .line 175
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e1

    aput-byte v4, v0, v1

    .line 176
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3e2

    const/16 v2, 0x3f4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 177
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3f4

    const/16 v2, 0x401

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 178
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x401

    const/16 v2, 0x40d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 179
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x40d

    aput-byte v4, v0, v1

    .line 180
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x40e

    const/16 v2, 0x450

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 181
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x450

    aput-byte v4, v0, v1

    .line 182
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x451

    const/16 v2, 0x45d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 183
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x45d

    aput-byte v4, v0, v1

    .line 184
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x45e

    const/16 v2, 0x482

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 185
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x482

    aput-byte v4, v0, v1

    .line 186
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x483

    const/16 v2, 0x487

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 187
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x487

    const/16 v2, 0x490

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 188
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x490

    const/16 v2, 0x4c5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 189
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4c5

    const/16 v2, 0x4c7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 190
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4c7

    const/16 v2, 0x4c9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 191
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4c9

    const/16 v2, 0x4cb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 192
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4cb

    const/16 v2, 0x4cd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 193
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4cd

    const/16 v2, 0x4d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 194
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4d0

    const/16 v2, 0x4ec

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 195
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4ec

    const/16 v2, 0x4ee

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 196
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4ee

    const/16 v2, 0x4f6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 197
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4f6

    const/16 v2, 0x4f8

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 198
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4f8

    const/16 v2, 0x4fa

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 199
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4fa

    const/16 v2, 0x531

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 200
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x531

    const/16 v2, 0x557

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 201
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x557

    const/16 v2, 0x559

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 202
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x559

    aput-byte v5, v0, v1

    .line 203
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x55a

    const/16 v2, 0x561

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 204
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x561

    const/16 v2, 0x587

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 205
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x587

    const/16 v2, 0x591

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 206
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x591

    const/16 v2, 0x5a2

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 207
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5a2

    aput-byte v4, v0, v1

    .line 208
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5a3

    const/16 v2, 0x5ba

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 209
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5ba

    aput-byte v4, v0, v1

    .line 210
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5bb

    const/16 v2, 0x5be

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 211
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5be

    aput-byte v4, v0, v1

    .line 212
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5bf

    aput-byte v6, v0, v1

    .line 213
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c0

    aput-byte v4, v0, v1

    .line 214
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c1

    const/16 v2, 0x5c3

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 215
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c3

    aput-byte v4, v0, v1

    .line 216
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c4

    aput-byte v6, v0, v1

    .line 217
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5c5

    const/16 v2, 0x5d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 218
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5d0

    const/16 v2, 0x5eb

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 219
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5eb

    const/16 v2, 0x5f0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 220
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5f0

    const/16 v2, 0x5f3

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 221
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x5f3

    const/16 v2, 0x621

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 222
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x621

    const/16 v2, 0x63b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 223
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x63b

    const/16 v2, 0x640

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 224
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x640

    aput-byte v6, v0, v1

    .line 225
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x641

    const/16 v2, 0x64b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 226
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x64b

    const/16 v2, 0x653

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 227
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x653

    const/16 v2, 0x660

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 228
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x660

    const/16 v2, 0x66a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 229
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x66a

    const/16 v2, 0x670

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 230
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x670

    aput-byte v6, v0, v1

    .line 231
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x671

    const/16 v2, 0x6b8

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 232
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6b8

    const/16 v2, 0x6ba

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 233
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6ba

    const/16 v2, 0x6bf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 234
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6bf

    aput-byte v4, v0, v1

    .line 235
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6c0

    const/16 v2, 0x6cf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 236
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6cf

    aput-byte v4, v0, v1

    .line 237
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d0

    const/16 v2, 0x6d4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 238
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d4

    aput-byte v4, v0, v1

    .line 239
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d5

    aput-byte v5, v0, v1

    .line 240
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6d6

    const/16 v2, 0x6e5

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 241
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6e5

    const/16 v2, 0x6e7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 242
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6e7

    const/16 v2, 0x6e9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 243
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6e9

    aput-byte v4, v0, v1

    .line 244
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6ea

    const/16 v2, 0x6ee

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 245
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6ee

    const/16 v2, 0x6f0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 246
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6f0

    const/16 v2, 0x6fa

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 247
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x6fa

    const/16 v2, 0x901

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 248
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x901

    const/16 v2, 0x904

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 249
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x904

    aput-byte v4, v0, v1

    .line 250
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x905

    const/16 v2, 0x93a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 251
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93a

    const/16 v2, 0x93c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 252
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93c

    aput-byte v6, v0, v1

    .line 253
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93d

    aput-byte v5, v0, v1

    .line 254
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x93e

    const/16 v2, 0x94e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 255
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x94e

    const/16 v2, 0x951

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 256
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x951

    const/16 v2, 0x955

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 257
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x955

    const/16 v2, 0x958

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 258
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x958

    const/16 v2, 0x962

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 259
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x962

    const/16 v2, 0x964

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 260
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x964

    const/16 v2, 0x966

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 261
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x966

    const/16 v2, 0x970

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 262
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x970

    const/16 v2, 0x981

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 263
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x981

    const/16 v2, 0x984

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 264
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x984

    aput-byte v4, v0, v1

    .line 265
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x985

    const/16 v2, 0x98d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 266
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x98d

    const/16 v2, 0x98f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 267
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x98f

    const/16 v2, 0x991

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 268
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x991

    const/16 v2, 0x993

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 269
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x993

    const/16 v2, 0x9a9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 270
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9a9

    aput-byte v4, v0, v1

    .line 271
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9aa

    const/16 v2, 0x9b1

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 272
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b1

    aput-byte v4, v0, v1

    .line 273
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b2

    aput-byte v5, v0, v1

    .line 274
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b3

    const/16 v2, 0x9b6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 275
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9b6

    const/16 v2, 0x9ba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 276
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9ba

    const/16 v2, 0x9bc

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 277
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9bc

    aput-byte v6, v0, v1

    .line 278
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9bd

    aput-byte v4, v0, v1

    .line 279
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9be

    const/16 v2, 0x9c5

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 280
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9c5

    const/16 v2, 0x9c7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 281
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9c7

    const/16 v2, 0x9c9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 282
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9c9

    const/16 v2, 0x9cb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 283
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9cb

    const/16 v2, 0x9ce

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 284
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9ce

    const/16 v2, 0x9d7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 285
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9d7

    aput-byte v6, v0, v1

    .line 286
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9d8

    const/16 v2, 0x9dc

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 287
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9dc

    const/16 v2, 0x9de

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 288
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9de

    aput-byte v4, v0, v1

    .line 289
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9df

    const/16 v2, 0x9e2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 290
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9e2

    const/16 v2, 0x9e4

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 291
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9e4

    const/16 v2, 0x9e6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 292
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9e6

    const/16 v2, 0x9f0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 293
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9f0

    const/16 v2, 0x9f2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 294
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x9f2

    const/16 v2, 0xa02

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 295
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa02

    aput-byte v6, v0, v1

    .line 296
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa03

    const/16 v2, 0xa05

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 297
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa05

    const/16 v2, 0xa0b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 298
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa0b

    const/16 v2, 0xa0f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 299
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa0f

    const/16 v2, 0xa11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 300
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa11

    const/16 v2, 0xa13

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 301
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa13

    const/16 v2, 0xa29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 302
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa29

    aput-byte v4, v0, v1

    .line 303
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa2a

    const/16 v2, 0xa31

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 304
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa31

    aput-byte v4, v0, v1

    .line 305
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa32

    const/16 v2, 0xa34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 306
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa34

    aput-byte v4, v0, v1

    .line 307
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa35

    const/16 v2, 0xa37

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 308
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa37

    aput-byte v4, v0, v1

    .line 309
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa38

    const/16 v2, 0xa3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 310
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3a

    const/16 v2, 0xa3c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 311
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3c

    aput-byte v6, v0, v1

    .line 312
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3d

    aput-byte v4, v0, v1

    .line 313
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa3e

    const/16 v2, 0xa43

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 314
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa43

    const/16 v2, 0xa47

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 315
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa47

    const/16 v2, 0xa49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 316
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa49

    const/16 v2, 0xa4b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 317
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa4b

    const/16 v2, 0xa4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 318
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa4e

    const/16 v2, 0xa59

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 319
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa59

    const/16 v2, 0xa5d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 320
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa5d

    aput-byte v4, v0, v1

    .line 321
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa5e

    aput-byte v5, v0, v1

    .line 322
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa5f

    const/16 v2, 0xa66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 323
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa66

    const/16 v2, 0xa72

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 324
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa72

    const/16 v2, 0xa75

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 325
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa75

    const/16 v2, 0xa81

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 326
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa81

    const/16 v2, 0xa84

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 327
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa84

    aput-byte v4, v0, v1

    .line 328
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa85

    const/16 v2, 0xa8c

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 329
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8c

    aput-byte v4, v0, v1

    .line 330
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8d

    aput-byte v5, v0, v1

    .line 331
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8e

    aput-byte v4, v0, v1

    .line 332
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa8f

    const/16 v2, 0xa92

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 333
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa92

    aput-byte v4, v0, v1

    .line 334
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xa93

    const/16 v2, 0xaa9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 335
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaa9

    aput-byte v4, v0, v1

    .line 336
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaaa

    const/16 v2, 0xab1

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 337
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab1

    aput-byte v4, v0, v1

    .line 338
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab2

    const/16 v2, 0xab4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 339
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab4

    aput-byte v4, v0, v1

    .line 340
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xab5

    const/16 v2, 0xaba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 341
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaba

    const/16 v2, 0xabc

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 342
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xabc

    aput-byte v6, v0, v1

    .line 343
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xabd

    aput-byte v5, v0, v1

    .line 344
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xabe

    const/16 v2, 0xac6

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 345
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xac6

    aput-byte v4, v0, v1

    .line 346
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xac7

    const/16 v2, 0xaca

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 347
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaca

    aput-byte v4, v0, v1

    .line 348
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xacb

    const/16 v2, 0xace

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 349
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xace

    const/16 v2, 0xae0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 350
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xae0

    aput-byte v5, v0, v1

    .line 351
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xae1

    const/16 v2, 0xae6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 352
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xae6

    const/16 v2, 0xaf0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 353
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xaf0

    const/16 v2, 0xb01

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 354
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb01

    const/16 v2, 0xb04

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 355
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb04

    aput-byte v4, v0, v1

    .line 356
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb05

    const/16 v2, 0xb0d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 357
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb0d

    const/16 v2, 0xb0f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 358
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb0f

    const/16 v2, 0xb11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 359
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb11

    const/16 v2, 0xb13

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 360
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb13

    const/16 v2, 0xb29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 361
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb29

    aput-byte v4, v0, v1

    .line 362
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb2a

    const/16 v2, 0xb31

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 363
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb31

    aput-byte v4, v0, v1

    .line 364
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb32

    const/16 v2, 0xb34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 365
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb34

    const/16 v2, 0xb36

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 366
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb36

    const/16 v2, 0xb3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 367
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3a

    const/16 v2, 0xb3c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 368
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3c

    aput-byte v6, v0, v1

    .line 369
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3d

    aput-byte v5, v0, v1

    .line 370
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb3e

    const/16 v2, 0xb44

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 371
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb44

    const/16 v2, 0xb47

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 372
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb47

    const/16 v2, 0xb49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 373
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb49

    const/16 v2, 0xb4b

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 374
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb4b

    const/16 v2, 0xb4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 375
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb4e

    const/16 v2, 0xb56

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 376
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb56

    const/16 v2, 0xb58

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 377
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb58

    const/16 v2, 0xb5c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 378
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb5c

    const/16 v2, 0xb5e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 379
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb5e

    aput-byte v4, v0, v1

    .line 380
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb5f

    const/16 v2, 0xb62

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 381
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb62

    const/16 v2, 0xb66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 382
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb66

    const/16 v2, 0xb70

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 383
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb70

    const/16 v2, 0xb82

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 384
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb82

    const/16 v2, 0xb84

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 385
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb84

    aput-byte v4, v0, v1

    .line 386
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb85

    const/16 v2, 0xb8b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 387
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb8b

    const/16 v2, 0xb8e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 388
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb8e

    const/16 v2, 0xb91

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 389
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb91

    aput-byte v4, v0, v1

    .line 390
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb92

    const/16 v2, 0xb96

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 391
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb96

    const/16 v2, 0xb99

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 392
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb99

    const/16 v2, 0xb9b

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 393
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9b

    aput-byte v4, v0, v1

    .line 394
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9c

    aput-byte v5, v0, v1

    .line 395
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9d

    aput-byte v4, v0, v1

    .line 396
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xb9e

    const/16 v2, 0xba0

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 397
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba0

    const/16 v2, 0xba3

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 398
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba3

    const/16 v2, 0xba5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 399
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba5

    const/16 v2, 0xba8

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 400
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xba8

    const/16 v2, 0xbab

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 401
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbab

    const/16 v2, 0xbae

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 402
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbae

    const/16 v2, 0xbb6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 403
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbb6

    aput-byte v4, v0, v1

    .line 404
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbb7

    const/16 v2, 0xbba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 405
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbba

    const/16 v2, 0xbbe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 406
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbbe

    const/16 v2, 0xbc3

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 407
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbc3

    const/16 v2, 0xbc6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 408
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbc6

    const/16 v2, 0xbc9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 409
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbc9

    aput-byte v4, v0, v1

    .line 410
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbca

    const/16 v2, 0xbce

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 411
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbce

    const/16 v2, 0xbd7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 412
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbd7

    aput-byte v6, v0, v1

    .line 413
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbd8

    const/16 v2, 0xbe7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 414
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbe7

    const/16 v2, 0xbf0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 415
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xbf0

    const/16 v2, 0xc01

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 416
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc01

    const/16 v2, 0xc04

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 417
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc04

    aput-byte v4, v0, v1

    .line 418
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc05

    const/16 v2, 0xc0d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 419
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc0d

    aput-byte v4, v0, v1

    .line 420
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc0e

    const/16 v2, 0xc11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 421
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc11

    aput-byte v4, v0, v1

    .line 422
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc12

    const/16 v2, 0xc29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 423
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc29

    aput-byte v4, v0, v1

    .line 424
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc2a

    const/16 v2, 0xc34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 425
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc34

    aput-byte v4, v0, v1

    .line 426
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc35

    const/16 v2, 0xc3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 427
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc3a

    const/16 v2, 0xc3e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 428
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc3e

    const/16 v2, 0xc45

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 429
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc45

    aput-byte v4, v0, v1

    .line 430
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc46

    const/16 v2, 0xc49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 431
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc49

    aput-byte v4, v0, v1

    .line 432
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc4a

    const/16 v2, 0xc4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 433
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc4e

    const/16 v2, 0xc55

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 434
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc55

    const/16 v2, 0xc57

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 435
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc57

    const/16 v2, 0xc60

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 436
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc60

    const/16 v2, 0xc62

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 437
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc62

    const/16 v2, 0xc66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 438
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc66

    const/16 v2, 0xc70

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 439
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc70

    const/16 v2, 0xc82

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 440
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc82

    const/16 v2, 0xc84

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 441
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc84

    aput-byte v4, v0, v1

    .line 442
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc85

    const/16 v2, 0xc8d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 443
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc8d

    aput-byte v4, v0, v1

    .line 444
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc8e

    const/16 v2, 0xc91

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 445
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc91

    aput-byte v4, v0, v1

    .line 446
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xc92

    const/16 v2, 0xca9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 447
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xca9

    aput-byte v4, v0, v1

    .line 448
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcaa

    const/16 v2, 0xcb4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 449
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcb4

    aput-byte v4, v0, v1

    .line 450
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcb5

    const/16 v2, 0xcba

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 451
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcba

    const/16 v2, 0xcbe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 452
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcbe

    const/16 v2, 0xcc5

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 453
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcc5

    aput-byte v4, v0, v1

    .line 454
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcc6

    const/16 v2, 0xcc9

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 455
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcc9

    aput-byte v4, v0, v1

    .line 456
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcca

    const/16 v2, 0xcce

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 457
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcce

    const/16 v2, 0xcd5

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 458
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcd5

    const/16 v2, 0xcd7

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 459
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcd7

    const/16 v2, 0xcde

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 460
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcde

    aput-byte v5, v0, v1

    .line 461
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcdf

    aput-byte v4, v0, v1

    .line 462
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xce0

    const/16 v2, 0xce2

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 463
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xce2

    const/16 v2, 0xce6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 464
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xce6

    const/16 v2, 0xcf0

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 465
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xcf0

    const/16 v2, 0xd02

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 466
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd02

    const/16 v2, 0xd04

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 467
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd04

    aput-byte v4, v0, v1

    .line 468
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd05

    const/16 v2, 0xd0d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 469
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd0d

    aput-byte v4, v0, v1

    .line 470
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd0e

    const/16 v2, 0xd11

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 471
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd11

    aput-byte v4, v0, v1

    .line 472
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd12

    const/16 v2, 0xd29

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 473
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd29

    aput-byte v4, v0, v1

    .line 474
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd2a

    const/16 v2, 0xd3a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 475
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd3a

    const/16 v2, 0xd3e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 476
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd3e

    const/16 v2, 0xd44

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 477
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd44

    const/16 v2, 0xd46

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 478
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd46

    const/16 v2, 0xd49

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 479
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd49

    aput-byte v4, v0, v1

    .line 480
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd4a

    const/16 v2, 0xd4e

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 481
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd4e

    const/16 v2, 0xd57

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 482
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd57

    aput-byte v6, v0, v1

    .line 483
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd58

    const/16 v2, 0xd60

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 484
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd60

    const/16 v2, 0xd62

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 485
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd62

    const/16 v2, 0xd66

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 486
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd66

    const/16 v2, 0xd70

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 487
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xd70

    const/16 v2, 0xe01

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 488
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe01

    const/16 v2, 0xe2f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 489
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe2f

    aput-byte v4, v0, v1

    .line 490
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe30

    aput-byte v5, v0, v1

    .line 491
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe31

    aput-byte v6, v0, v1

    .line 492
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe32

    const/16 v2, 0xe34

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 493
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe34

    const/16 v2, 0xe3b

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 494
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe3b

    const/16 v2, 0xe40

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 495
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe40

    const/16 v2, 0xe46

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 496
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe46

    const/16 v2, 0xe4f

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 497
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe4f

    aput-byte v4, v0, v1

    .line 498
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe50

    const/16 v2, 0xe5a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 499
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe5a

    const/16 v2, 0xe81

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 500
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe81

    const/16 v2, 0xe83

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 501
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe83

    aput-byte v4, v0, v1

    .line 502
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe84

    aput-byte v5, v0, v1

    .line 503
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe85

    const/16 v2, 0xe87

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 504
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe87

    const/16 v2, 0xe89

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 505
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe89

    aput-byte v4, v0, v1

    .line 506
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8a

    aput-byte v5, v0, v1

    .line 507
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8b

    const/16 v2, 0xe8d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 508
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8d

    aput-byte v5, v0, v1

    .line 509
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe8e

    const/16 v2, 0xe94

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 510
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe94

    const/16 v2, 0xe98

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 511
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe98

    aput-byte v4, v0, v1

    .line 512
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xe99

    const/16 v2, 0xea0

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 513
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea0

    aput-byte v4, v0, v1

    .line 514
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea1

    const/16 v2, 0xea4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 515
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea4

    aput-byte v4, v0, v1

    .line 516
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea5

    aput-byte v5, v0, v1

    .line 517
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea6

    aput-byte v4, v0, v1

    .line 518
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea7

    aput-byte v5, v0, v1

    .line 519
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xea8

    const/16 v2, 0xeaa

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 520
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeaa

    const/16 v2, 0xeac

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 521
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeac

    aput-byte v4, v0, v1

    .line 522
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xead

    const/16 v2, 0xeaf

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 523
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeaf

    aput-byte v4, v0, v1

    .line 524
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb0

    aput-byte v5, v0, v1

    .line 525
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb1

    aput-byte v6, v0, v1

    .line 526
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb2

    const/16 v2, 0xeb4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 527
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeb4

    const/16 v2, 0xeba

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 528
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeba

    aput-byte v4, v0, v1

    .line 529
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xebb

    const/16 v2, 0xebd

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 530
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xebd

    aput-byte v5, v0, v1

    .line 531
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xebe

    const/16 v2, 0xec0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 532
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec0

    const/16 v2, 0xec5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 533
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec5

    aput-byte v4, v0, v1

    .line 534
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec6

    aput-byte v6, v0, v1

    .line 535
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec7

    aput-byte v4, v0, v1

    .line 536
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xec8

    const/16 v2, 0xece

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 537
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xece

    const/16 v2, 0xed0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 538
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xed0

    const/16 v2, 0xeda

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 539
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xeda

    const/16 v2, 0xf18

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 540
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf18

    const/16 v2, 0xf1a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 541
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf1a

    const/16 v2, 0xf20

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 542
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf20

    const/16 v2, 0xf2a

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 543
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf2a

    const/16 v2, 0xf35

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 544
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf35

    aput-byte v6, v0, v1

    .line 545
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf36

    aput-byte v4, v0, v1

    .line 546
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf37

    aput-byte v6, v0, v1

    .line 547
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf38

    aput-byte v4, v0, v1

    .line 548
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf39

    aput-byte v6, v0, v1

    .line 549
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf3a

    const/16 v2, 0xf3e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 550
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf3e

    const/16 v2, 0xf40

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 551
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf40

    const/16 v2, 0xf48

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 552
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf48

    aput-byte v4, v0, v1

    .line 553
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf49

    const/16 v2, 0xf6a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 554
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf6a

    const/16 v2, 0xf71

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 555
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf71

    const/16 v2, 0xf85

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 556
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf85

    aput-byte v4, v0, v1

    .line 557
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf86

    const/16 v2, 0xf8c

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 558
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf8c

    const/16 v2, 0xf90

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 559
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf90

    const/16 v2, 0xf96

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 560
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf96

    aput-byte v4, v0, v1

    .line 561
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf97

    aput-byte v6, v0, v1

    .line 562
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf98

    aput-byte v4, v0, v1

    .line 563
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xf99

    const/16 v2, 0xfae

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 564
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfae

    const/16 v2, 0xfb1

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 565
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfb1

    const/16 v2, 0xfb8

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 566
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfb8

    aput-byte v4, v0, v1

    .line 567
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfb9

    aput-byte v6, v0, v1

    .line 568
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0xfba

    const/16 v2, 0x10a0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 569
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10a0

    const/16 v2, 0x10c6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 570
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10c6

    const/16 v2, 0x10d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 571
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10d0

    const/16 v2, 0x10f7

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 572
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x10f7

    const/16 v2, 0x1100

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 573
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1100

    aput-byte v5, v0, v1

    .line 574
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1101

    aput-byte v4, v0, v1

    .line 575
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1102

    const/16 v2, 0x1104

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 576
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1104

    aput-byte v4, v0, v1

    .line 577
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1105

    const/16 v2, 0x1108

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 578
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1108

    aput-byte v4, v0, v1

    .line 579
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1109

    aput-byte v5, v0, v1

    .line 580
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110a

    aput-byte v4, v0, v1

    .line 581
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110b

    const/16 v2, 0x110d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 582
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110d

    aput-byte v4, v0, v1

    .line 583
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x110e

    const/16 v2, 0x1113

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 584
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1113

    const/16 v2, 0x113c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 585
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113c

    aput-byte v5, v0, v1

    .line 586
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113d

    aput-byte v4, v0, v1

    .line 587
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113e

    aput-byte v5, v0, v1

    .line 588
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x113f

    aput-byte v4, v0, v1

    .line 589
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1140

    aput-byte v5, v0, v1

    .line 590
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1141

    const/16 v2, 0x114c

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 591
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114c

    aput-byte v5, v0, v1

    .line 592
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114d

    aput-byte v4, v0, v1

    .line 593
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114e

    aput-byte v5, v0, v1

    .line 594
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x114f

    aput-byte v4, v0, v1

    .line 595
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1150

    aput-byte v5, v0, v1

    .line 596
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1151

    const/16 v2, 0x1154

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 597
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1154

    const/16 v2, 0x1156

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 598
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1156

    const/16 v2, 0x1159

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 599
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1159

    aput-byte v5, v0, v1

    .line 600
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x115a

    const/16 v2, 0x115f

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 601
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x115f

    const/16 v2, 0x1162

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 602
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1162

    aput-byte v4, v0, v1

    .line 603
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1163

    aput-byte v5, v0, v1

    .line 604
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1164

    aput-byte v4, v0, v1

    .line 605
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1165

    aput-byte v5, v0, v1

    .line 606
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1166

    aput-byte v4, v0, v1

    .line 607
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1167

    aput-byte v5, v0, v1

    .line 608
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1168

    aput-byte v4, v0, v1

    .line 609
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1169

    aput-byte v5, v0, v1

    .line 610
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x116a

    const/16 v2, 0x116d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 611
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x116d

    const/16 v2, 0x116f

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 612
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x116f

    const/16 v2, 0x1172

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 613
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1172

    const/16 v2, 0x1174

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 614
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1174

    aput-byte v4, v0, v1

    .line 615
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1175

    aput-byte v5, v0, v1

    .line 616
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1176

    const/16 v2, 0x119e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 617
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x119e

    aput-byte v5, v0, v1

    .line 618
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x119f

    const/16 v2, 0x11a8

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 619
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11a8

    aput-byte v5, v0, v1

    .line 620
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11a9

    const/16 v2, 0x11ab

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 621
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ab

    aput-byte v5, v0, v1

    .line 622
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ac

    const/16 v2, 0x11ae

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 623
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ae

    const/16 v2, 0x11b0

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 624
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11b0

    const/16 v2, 0x11b7

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 625
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11b7

    const/16 v2, 0x11b9

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 626
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11b9

    aput-byte v4, v0, v1

    .line 627
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ba

    aput-byte v5, v0, v1

    .line 628
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11bb

    aput-byte v4, v0, v1

    .line 629
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11bc

    const/16 v2, 0x11c3

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 630
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11c3

    const/16 v2, 0x11eb

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 631
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11eb

    aput-byte v5, v0, v1

    .line 632
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11ec

    const/16 v2, 0x11f0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 633
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11f0

    aput-byte v5, v0, v1

    .line 634
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11f1

    const/16 v2, 0x11f9

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 635
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11f9

    aput-byte v5, v0, v1

    .line 636
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x11fa

    const/16 v2, 0x1e00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 637
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1e00

    const/16 v2, 0x1e9c

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 638
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1e9c

    const/16 v2, 0x1ea0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 639
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ea0

    const/16 v2, 0x1efa

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 640
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1efa

    const/16 v2, 0x1f00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 641
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f00

    const/16 v2, 0x1f16

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 642
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f16

    const/16 v2, 0x1f18

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 643
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f18

    const/16 v2, 0x1f1e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 644
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f1e

    const/16 v2, 0x1f20

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 645
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f20

    const/16 v2, 0x1f46

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 646
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f46

    const/16 v2, 0x1f48

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 647
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f48

    const/16 v2, 0x1f4e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 648
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f4e

    const/16 v2, 0x1f50

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 649
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f50

    const/16 v2, 0x1f58

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 650
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f58

    aput-byte v4, v0, v1

    .line 651
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f59

    aput-byte v5, v0, v1

    .line 652
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5a

    aput-byte v4, v0, v1

    .line 653
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5b

    aput-byte v5, v0, v1

    .line 654
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5c

    aput-byte v4, v0, v1

    .line 655
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5d

    aput-byte v5, v0, v1

    .line 656
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5e

    aput-byte v4, v0, v1

    .line 657
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f5f

    const/16 v2, 0x1f7e

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 658
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f7e

    const/16 v2, 0x1f80

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 659
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1f80

    const/16 v2, 0x1fb5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 660
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fb5

    aput-byte v4, v0, v1

    .line 661
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fb6

    const/16 v2, 0x1fbd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 662
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbd

    aput-byte v4, v0, v1

    .line 663
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbe

    aput-byte v5, v0, v1

    .line 664
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fbf

    const/16 v2, 0x1fc2

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 665
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc2

    const/16 v2, 0x1fc5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 666
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc5

    aput-byte v4, v0, v1

    .line 667
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fc6

    const/16 v2, 0x1fcd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 668
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fcd

    const/16 v2, 0x1fd0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 669
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd0

    const/16 v2, 0x1fd4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 670
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd4

    const/16 v2, 0x1fd6

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 671
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fd6

    const/16 v2, 0x1fdc

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 672
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fdc

    const/16 v2, 0x1fe0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 673
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fe0

    const/16 v2, 0x1fed

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 674
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1fed

    const/16 v2, 0x1ff2

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 675
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff2

    const/16 v2, 0x1ff5

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 676
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff5

    aput-byte v4, v0, v1

    .line 677
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ff6

    const/16 v2, 0x1ffd

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 678
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x1ffd

    const/16 v2, 0x20d0

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 679
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20d0

    const/16 v2, 0x20dd

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 680
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20dd

    const/16 v2, 0x20e1

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 681
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20e1

    aput-byte v6, v0, v1

    .line 682
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x20e2

    const/16 v2, 0x2126

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 683
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2126

    aput-byte v5, v0, v1

    .line 684
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2127

    const/16 v2, 0x212a

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 685
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212a

    const/16 v2, 0x212c

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 686
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212c

    const/16 v2, 0x212e

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 687
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212e

    aput-byte v5, v0, v1

    .line 688
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x212f

    const/16 v2, 0x2180

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 689
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2180

    const/16 v2, 0x2183

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 690
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x2183

    const/16 v2, 0x3005

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 691
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3005

    aput-byte v6, v0, v1

    .line 692
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3006

    aput-byte v4, v0, v1

    .line 693
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3007

    aput-byte v5, v0, v1

    .line 694
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3008

    const/16 v2, 0x3021

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 695
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3021

    const/16 v2, 0x302a

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 696
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x302a

    const/16 v2, 0x3030

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 697
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3030

    aput-byte v4, v0, v1

    .line 698
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3031

    const/16 v2, 0x3036

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 699
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3036

    const/16 v2, 0x3041

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 700
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3041

    const/16 v2, 0x3095

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 701
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3095

    const/16 v2, 0x3099

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 702
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3099

    const/16 v2, 0x309b

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 703
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x309b

    const/16 v2, 0x309d

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 704
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x309d

    const/16 v2, 0x309f

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 705
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x309f

    const/16 v2, 0x30a1

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 706
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30a1

    const/16 v2, 0x30fb

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 707
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30fb

    aput-byte v4, v0, v1

    .line 708
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30fc

    const/16 v2, 0x30ff

    invoke-static {v0, v1, v2, v6}, Ljava/util/Arrays;->fill([BIIB)V

    .line 709
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x30ff

    const/16 v2, 0x3105

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 710
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x3105

    const/16 v2, 0x312d

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 711
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x312d

    const/16 v2, 0x4e00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 712
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const/16 v1, 0x4e00

    const v2, 0x9fa6

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 713
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0x9fa6

    const v2, 0xac00

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 714
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0xac00

    const v2, 0xd7a4

    invoke-static {v0, v1, v2, v5}, Ljava/util/Arrays;->fill([BIIB)V

    .line 715
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0xd7a4

    const v2, 0xd800

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 716
    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    const v1, 0xe000

    const v2, 0xfffe

    invoke-static {v0, v1, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 718
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highSurrogate(I)C
    .registers 3
    .parameter "c"

    .prologue
    .line 750
    const/high16 v0, 0x1

    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static isContent(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 811
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_13

    :cond_c
    if-gt v1, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isHighSurrogate(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 768
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isInvalid(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 802
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/XMLChar;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isLowSurrogate(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 777
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isMarkup(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 822
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_c

    const/16 v0, 0x26

    if-eq p0, v0, :cond_c

    const/16 v0, 0x25

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNCName(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 876
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNCNameStart(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 865
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isName(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 854
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isNameStart(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 843
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isPubid(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 887
    const/high16 v0, 0x1

    if-ge p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSpace(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 832
    const/16 v0, 0x20

    if-gt p0, v0, :cond_e

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSupplemental(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 730
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_b

    const v0, 0x10ffff

    if-gt p0, v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isValid(I)Z
    .registers 3
    .parameter "c"

    .prologue
    const/high16 v1, 0x1

    .line 792
    if-ge p0, v1, :cond_c

    sget-object v0, Lorg/apache/xml/serializer/utils/XMLChar;->CHARS:[B

    aget-byte v0, v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    :cond_c
    if-gt v1, p0, :cond_15

    const v0, 0x10ffff

    if-gt p0, v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isValidIANAEncoding(Ljava/lang/String;)Z
    .registers 10
    .parameter "ianaEncoding"

    .prologue
    const/16 v8, 0x7a

    const/16 v7, 0x61

    const/16 v6, 0x5a

    const/16 v5, 0x41

    const/4 v4, 0x0

    .line 979
    if-eqz p0, :cond_47

    .line 980
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 981
    .local v2, length:I
    if-lez v2, :cond_47

    .line 982
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 983
    .local v0, c:C
    if-lt v0, v5, :cond_19

    if-le v0, v6, :cond_1d

    :cond_19
    if-lt v0, v7, :cond_47

    if-gt v0, v8, :cond_47

    .line 984
    :cond_1d
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1e
    if-ge v1, v2, :cond_45

    .line 985
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 986
    if-lt v0, v5, :cond_28

    if-le v0, v6, :cond_42

    :cond_28
    if-lt v0, v7, :cond_2c

    if-le v0, v8, :cond_42

    :cond_2c
    const/16 v3, 0x30

    if-lt v0, v3, :cond_34

    const/16 v3, 0x39

    if-le v0, v3, :cond_42

    :cond_34
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_42

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_42

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_42

    move v3, v4

    .line 996
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :goto_41
    return v3

    .line 984
    .restart local v0       #c:C
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 992
    :cond_45
    const/4 v3, 0x1

    goto :goto_41

    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_47
    move v3, v4

    .line 996
    goto :goto_41
.end method

.method public static isValidJavaEncoding(Ljava/lang/String;)Z
    .registers 6
    .parameter "javaEncoding"

    .prologue
    const/4 v4, 0x0

    .line 1008
    if-eqz p0, :cond_3b

    .line 1009
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1010
    .local v2, length:I
    if-lez v2, :cond_3b

    .line 1011
    const/4 v1, 0x1

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_39

    .line 1012
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1013
    .local v0, c:C
    const/16 v3, 0x41

    if-lt v0, v3, :cond_18

    const/16 v3, 0x5a

    if-le v0, v3, :cond_36

    :cond_18
    const/16 v3, 0x61

    if-lt v0, v3, :cond_20

    const/16 v3, 0x7a

    if-le v0, v3, :cond_36

    :cond_20
    const/16 v3, 0x30

    if-lt v0, v3, :cond_28

    const/16 v3, 0x39

    if-le v0, v3, :cond_36

    :cond_28
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_36

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_36

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_36

    move v3, v4

    .line 1022
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #length:I
    :goto_35
    return v3

    .line 1011
    .restart local v0       #c:C
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1019
    .end local v0           #c:C
    :cond_39
    const/4 v3, 0x1

    goto :goto_35

    .end local v1           #i:I
    .end local v2           #length:I
    :cond_3b
    move v3, v4

    .line 1022
    goto :goto_35
.end method

.method public static isValidNCName(Ljava/lang/String;)Z
    .registers 5
    .parameter "ncName"

    .prologue
    const/4 v3, 0x0

    .line 928
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 939
    :goto_8
    return v2

    .line 930
    :cond_9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 931
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCNameStart(I)Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v3

    .line 932
    goto :goto_8

    .line 933
    :cond_15
    const/4 v1, 0x1

    .local v1, i:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 934
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 935
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNCName(I)Z

    move-result v2

    if-nez v2, :cond_28

    move v2, v3

    .line 936
    goto :goto_8

    .line 933
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 939
    :cond_2b
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 901
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 912
    :goto_8
    return v2

    .line 903
    :cond_9
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 904
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isNameStart(I)Z

    move-result v2

    if-nez v2, :cond_15

    move v2, v3

    .line 905
    goto :goto_8

    .line 906
    :cond_15
    const/4 v1, 0x1

    .local v1, i:I
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 907
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 908
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    move-result v2

    if-nez v2, :cond_28

    move v2, v3

    .line 909
    goto :goto_8

    .line 906
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 912
    :cond_2b
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public static isValidNmtoken(Ljava/lang/String;)Z
    .registers 5
    .parameter "nmtoken"

    .prologue
    const/4 v3, 0x0

    .line 953
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 961
    :goto_8
    return v2

    .line 955
    :cond_9
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 956
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 957
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isName(I)Z

    move-result v2

    if-nez v2, :cond_1c

    move v2, v3

    .line 958
    goto :goto_8

    .line 955
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 961
    .end local v0           #ch:C
    :cond_1f
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public static lowSurrogate(I)C
    .registers 3
    .parameter "c"

    .prologue
    .line 759
    const/high16 v0, 0x1

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static supplemental(CC)I
    .registers 4
    .parameter "h"
    .parameter "l"

    .prologue
    .line 741
    const v0, 0xd800

    sub-int v0, p0, v0

    mul-int/lit16 v0, v0, 0x400

    const v1, 0xdc00

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method
