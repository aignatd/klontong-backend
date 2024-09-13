import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('checkout')
export class CheckoutModel {
  @ApiPropertyOptional({ type: Number })
  @PrimaryGeneratedColumn('increment')
  id?: number;
  @ApiProperty({ type: Number })
  @Column()
  productId?: number;
  @ApiProperty({ type: String })
  @Column()
  userRsn?: string;
  @ApiProperty({ type: String })
  @Column()
  categoryName: string;
  @ApiProperty({ type: String })
  @Column()
  productName?: string;
  @ApiProperty({ type: Number })
  @Column()
  price?: number;
  @ApiProperty({ type: Number })
  @Column()
  quantity?: number;
  @ApiProperty({ type: Number })
  @Column()
  sum?: number;
}
